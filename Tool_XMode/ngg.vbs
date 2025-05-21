Option Explicit

Dim secretNumber, userGuess, attempts
Randomize
secretNumber = Int((100 * Rnd) + 1) ' Generate a random number between 1 and 100
attempts = 0

Do
    userGuess = InputBox("Guess a number between 1 and 100:", "Number Guessing Game")
    
    If userGuess = "" Then
        MsgBox "Game cancelled."
        WScript.Quit
    End If
    
    If Not IsNumeric(userGuess) Then
        MsgBox "Please enter a valid number."
    Else
        userGuess = CInt(userGuess)
        
        If userGuess < 1 Or userGuess > 100 Then
            MsgBox "Please enter a number between 1 and 100."
        Else
            attempts = attempts + 1

            If userGuess < secretNumber Then
                MsgBox "Too low! Try again."
            ElseIf userGuess > secretNumber Then
                MsgBox "Too high! Try again."
            Else
                MsgBox "Congratulations! You've guessed the number " & secretNumber & " in " & attempts & " attempts."
            End If
        End If
    End If
Loop Until userGuess = secretNumber
