$package = Join-Path $PSScriptRoot "..\handoff\mikrotik-daraa-overlay"
$login = Get-Content -Raw (Join-Path $package "login.html")

$required = @(
  "login.html",
  "assets\css\main.css",
  "assets\js\main.js",
  "assets\brand\logo.svg",
  "assets\brand\background.png",
  "assets\fonts\qomra-regular.ttf",
  "assets\fonts\lato-digits-regular.ttf"
)

foreach ($file in $required) {
  if (-not (Test-Path (Join-Path $package $file))) {
    throw "Missing package file: $file"
  }
}

foreach ($token in @('$(link-login-only)', '$(chap-id)', '$(chap-challenge)', 'md5.js', 'doLogin()')) {
  if (-not $login.Contains($token)) {
    throw "Missing MikroTik login token: $token"
  }
}

Write-Output "MikroTik overlay package is complete."
