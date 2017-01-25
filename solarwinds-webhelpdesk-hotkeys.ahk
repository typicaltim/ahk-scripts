; AHK Hotkey Items

; Universal Variables
myname = Fname Lname
mytitle = MyJobTitle
myorg = MyOrganization Co
myphone = #.###.555.1234
myemail = user@domain.web

; WebHelpDesk - Date Paster
; References
; [1]: http://www.autohotkey.com/docs/commands/FormatTime.htm
^!+d::                                      			              ; When you press Ctrl+Alt+Shift+D
    clip0 = %ClipBoardAll%                  			              ; Store current clipboard in Clip0
    FormatTime, ClipBoard,, [u][b]dddd - MMMM d, yyyy[/b][/u]  	; Set the clipboard to the current date
    Send ^v                                			                ; Simulate typing Ctrl-V (paste)
    Sleep 1000                              			              ; Wait 1 second to ensure it's done
    ClipBoard = %Clip0%                     			              ; Set the clipboard back
    VarSetCapacity(Clip0, 0)                			              ; Free memory by emptying Clip0
Return 								                                          ; End of hotkey

; WebHelpDesk Signature
^!+c::
clip0 = %ClipBoardAll%          ; Store current clipboard in Clip0
Send [b]%myname%[/b]			      ; Type my name
Send {ENTER}							      ; Press Enter
Send %mytitle%						      ; Type my title
Send {ENTER}							      ; Press Enter
Send %myorg%							      ; Type my Organization
Send {ENTER}							      ; Press Enter
Send P: %myphone%					      ; Type my phone
Send {ENTER}							      ; Press Enter
Send E: %myemail%					      ; Type my email
Return 								          ; End of hotkey

; WebHelpDesk Quote Template
^!+q::
clip0 = %ClipBoardAll%          ; Store current clipboard in Clip0
Send Hey NAME,						      ; Type a greeting with placeholder 
Send {ENTER}							      ; Press Enter
Send {ENTER}							      ; Press Enter
Send {ENTER}							      ; Press Enter
Send [b][u]-----[/u][/b]	      ; Type a placeholder for a title
Send {ENTER}							      ; Press Enter
Send [b]Vendor:[/b]				      ; Type a placeholder for a vendor name
Send {ENTER}							      ; Press Enter
Send [b]Model:[/b]				      ; Type a placeholder for a model name
Send {ENTER}							      ; Press Enter
Send [b]Quote:[/b] [attached]		; Type a placeholder for a quote
Send {ENTER}							      ; Press Enter
Send [b]Cost:[/b] ~$						; Type a placeholder for the cost
Send {ENTER}							      ; Press Enter
Send [b]Account Code:[/b]				; Type a placeholder for the cost
Send {ENTER}							      ; Press Enter
Send [b]Description:[/b]				; Type a placeholder for a description
Send {ENTER}							      ; Press Enter
Send {ENTER}							      ; Press Enter
Send [b]%myname%[/b]						; Type my name
Send {ENTER}							      ; Press Enter
Send %mytitle%							    ; Type my title
Send {ENTER}							      ; Press Enter
Send %myorg%							      ; Type my Organization
Send {ENTER}							      ; Press Enter
Send P: %myphone%						    ; Type my phone
Send {ENTER}							      ; Press Enter
Send E: %myemail%						    ; Type my email
Return 								          ; End of hotkey





