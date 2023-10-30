# ask 2 integers from the user
[int]$number1 = Read-Host "Give first integer please"
[int]$number2 = Read-Host "Give second integer please"

# Return addition, substraction, multiplication and division to the user
$addition = $number1 + $number2
$substraction = $number1 - $number2
$multiplication = $number1 * $number2
$division = $number1 / $number2

Write-Host "Sum is: $addition"
Write-Host "Substraction is: $substraction"
Write-Host "Multiplication is: $multiplication"
Write-Host "Division is: $division"