Clear-Host
Do {
    $CurrentDateTime = $(Get-Date -Format "yyyyddMM-hh:mm:ss")
    $WebRequest = Invoke-WebRequest -Uri "http://rancher1dc1.domain.local:32492"
    $WebRequestContent = $WebRequest.Content | ConvertFrom-String | Select-Object -ExpandProperty "P1"
    $WebRequestStatusCode = $($WebRequest.StatusCode)
    Write-Output "$CurrentDateTime`t$WebRequestContent[$WebRequestStatusCode]"

    Start-Sleep -Seconds 1
}
While($i -ne 0)