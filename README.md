# How to remove "Top Apps" / "Suggestions" from the search menu and restore the classic Windows 10 search icon

## How to remove "Top Apps" and "Suggestions"

![Win10 11](https://github.com/user-attachments/assets/e65aabc7-8273-4e78-a1fb-7c4ca582038e)

Download [CleanSearch.js](https://github.com/MandoCSGO/Remove-Top-Apps-Windows/blob/main/CleanSearch.js) and move it to

**(Win 10)** ```C:\Windows\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy\cache\Local\Desktop```

**(Win 11)** ```C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\Cortana.UI\cache\SVLocal\Desktop```

Modify permissions for '2.html' (located in the same directory) so that it can be modified

Edit '2.html' and add this at the end of the file

**(Win 10)**
```
<script type="text/javascript" src="ms-appx-web:///cache/local/Desktop/CleanSearch.js"></script>
```

**(Win 11)**
```
<script type="text/javascript" src="ms-appx-web:///Cortana.UI/cache/SVLocal/Desktop/CleanSearch.js"></script>
```

Save the file and restart your computer

_Credit: [n p3](https://answers.microsoft.com/en-us/windows/forum/all/how-do-i-remove-suggested-and-top-apps-from-the/2e44dbd2-a3e1-409a-8bc4-33334aca2a36)_

## How to restore the old search icon
![Screenshot 2024-03-20 212251](https://github.com/MandoCSGO/RemoveTopAppsWindows10/assets/30785368/d2f50ba1-d238-4708-abb3-eec7b46bf5fe)

Download [ViVeTool](https://github.com/thebookisclosed/ViVe/releases/tag/v0.3.3) and extract the folder

Run the command prompt as an administrator and navigate to your directory where you have 'ViVeTool.exe'

Run this command

```
.\ViVeTool.exe /disable /id:41868508
```

Restart your computer
