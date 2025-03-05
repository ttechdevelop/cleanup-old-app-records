# Указать путь к директории
$folderPath = "C:\Path\"

#Удаление файлов и каталогов старше 90 дней
Get-ChildItem -Path $folderPath -Recurse | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-90)} | Remove-Item -Recurse -Force