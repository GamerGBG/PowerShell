try {
    Get-CimInstance -ClassName Win32_BIOS
} catch {
    "! Error in line $($_.InvocationInfo.ScriptLineNumber): $($_.Exception.Message)"
    exit 1
}

Start-Sleep -Seconds 500
exit 0 # success
