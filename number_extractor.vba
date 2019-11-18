'name programme
Sub Extract_Vals()
'Set variables and variable types
Dim str As String
Dim length_str As Integer
Dim i As Integer
Dim plus_pos As String
Dim temp As String
Dim T_C As String
Dim input_r As Integer
Dim row As Integer
Dim rows As Long
Dim start_char As Integer
Dim num_plus As Integer

'Find out how many rows have data in (only works if first column is not blank)
rows = Range("A1").End(xlDown).row

Application.ScreenUpdating = False

'For all rows (length of column), string variable is the value in the second column
For row = 1 To rows
        str = Cells(row, 2)
    'starting input column = 3
        input_r = 3
        start_char = 1
    'work out how many plusses were in the string by subtracting the string length without plusses from the original string length
        num_plus = Len(str) - Len(Replace(str, "+", ""))
    'For every plus in the string
        For i = 1 To num_plus
    'Set plus_pos variable to be the position of the current plus in the string (i.e. starting with the first)
        plus_pos = InStr(start_char, str, "+")
    'If the character after plus_pos is a 1, make temp that character plus the one afterwards (i.e. it's a 10, 11, 12, etc.), else make temp just the character after plus_pos (i.e. it's a 9, etc.)
        If Mid(str, plus_pos + 1, 1) = 1 Then
            temp = Mid(str, plus_pos + 1, 2)
        Else
            temp = Mid(str, plus_pos + 1, 1)
        End If

        'set the cell "input_r" from current row to be temp character (either one or two characters after plus_pos)
                Cells(row, input_r) = temp
        'advance input cell on one column
                input_r = input_r + 1
    
    start_char = plus_pos + 1
    Next i
Next row

Application.ScreenUpdating = True


End Sub
