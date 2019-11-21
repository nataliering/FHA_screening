Sub CountG()

Dim i As Integer
Dim str As String
Dim rows As Long
Dim gCount As Integer
Dim length_str As Integer
Dim c As String
Dim temp As String
Dim T_C As String
Dim input_r As Integer
Dim row As Integer
Dim p As Integer
Dim appear As Integer
Dim np As Integer
Dim outstr As String

rows = Worksheets("Sheet1").Range("A1").End(xlDown).row

Application.ScreenUpdating = False

'For all rows (length of column), string variaable is the value in the second column
For row = 2 To rows
    gCount = 0
    str = Cells(row, 2)
    'length of string variable is length of string variable
    length_str = Len(str)
    p = 1
    np = 2
    appear = Len(str) - Len(Replace(str, "+", ""))
    'For every character from 1 to the end of the string
        For i = 1 To appear
    'Set c variable to be whichever character i currently is
        c = InStr(p, str, "+")
     If Mid(str, c + 1, 1) = 1 Then
         temp = Mid(str, c + 1, 2)
         np = c + 3
     Else
         temp = Mid(str, c + 1, 1)
         np = c + 2
     End If
        
        outstr = Mid(str, np, temp)
        If (Len(outstr) - Len(Replace(UCase(outstr), "G", ""))) <> temp Then
            gCount = gCount + 1
        End If
        
  
    p = c + 1
    
    Next i
    
    Worksheets("Sheet3").Range("Q" & row) = gCount
    
    
Next row

Application.ScreenUpdating = True


End Sub
