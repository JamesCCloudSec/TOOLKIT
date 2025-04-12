# Create a dated backup folder with organized structure
# Enhanced with input validation and user-friendly retry prompts

function Get-ValidPath {
    while ($true) {
        $inputPath = Read-Host "Enter backup location (press Enter to use Desktop)"

        if ([string]::IsNullOrWhiteSpace($inputPath)) {
            $backupBase = [System.Environment]::GetFolderPath("Desktop")
        } else {
            $backupBase = $inputPath
        }

        if (Test-Path $backupBase) {
            return $backupBase
        } else {
            Write-Host ""
            Write-Host "    That path doesn't exist. Try something like:"
            Write-Host "    D:\         (USB drive)"
            Write-Host "    C:\Users\Ethan\Documents\Backups"
            Write-Host "    Or just press Enter to use your Desktop"
            Write-Host ""
        }
    }
}

$backupBase = Get-ValidPath
$date = Get-Date -Format "yyyy-MM-dd"
$targetFolder = Join-Path $backupBase $date

# Subfolders you want in every backup
$subfolders = @("Documents", "Financial", "Recipes", "Website", "Photos")

# Create base folder
if (!(Test-Path $targetFolder)) {
    New-Item -ItemType Directory -Path $targetFolder | Out-Null
    Write-Host " Created base backup folder: $targetFolder" -ForegroundColor Green
} else {
    Write-Host " Backup folder already exists: $targetFolder" -ForegroundColor Cyan
}

# Create subfolders
foreach ($sub in $subfolders) {
    $fullPath = Join-Path $targetFolder $sub
    if (!(Test-Path $fullPath)) {
        New-Item -ItemType Directory -Path $fullPath | Out-Null
        Write-Host "  └─ Created: $sub"
    } else {
        Write-Host "  └─ Already exists: $sub"
    }
}

Write-Host ""
Write-Host " Backup folder structure ready." -ForegroundColor Green
pause
