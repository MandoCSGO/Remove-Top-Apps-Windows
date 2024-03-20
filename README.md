# How to remove "Top Apps" / "Suggestions" from the search menu and restore the classic Windows 10 search icon

## How to remove "Top Apps" and "Suggestions"

![Screenshot 2024-03-20 212227](https://github.com/MandoCSGO/RemoveTopAppsWindows10/assets/30785368/49abf11e-253c-4e20-bf8d-5af80884cb93)

Download [BeautySearch](https://github.com/krlvm/BeautySearch/releases/tag/v1.17) and install

Check that you have 'BeautySearch.js' in

```C:\Windows\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy\cache\Local\Desktop```

Grant editing permissions to 'BeautySearch.js' and go to line 185

```sa_config.showCloseButton = !SETTINGS.hideCloseButton;```

Add this line of code under line 185

```
sa_config.enabledDataSources = ["DFLS","CUSE","QSCH","WWE","PP","IBA","ST","FEH","Web","OSTMA","QS","IFF","MPVD","MDOC","MFOL","MPHO","MVID","MMUS","ODC","MRU","MPP","MST","MFF","MRS","CG","PT","SSUE","SSUC","SSEE","SSEC","TS","ANA"];
```

_If you want to change other BeautySearch settings change them in this .js file_

Save the file and restart your computer

***If you get an error when clicking on the 'install' button follow these steps:***

Download [BeautySearch.js](https://github.com/krlvm/BeautySearch/blob/master/BeautySearch/Scripts/BeautySearch.js) and move it to

```C:\Windows\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy\cache\Local\Desktop```

Grant editing permissions to 'BeautySearch.js' and go to line 185

```sa_config.showCloseButton = !SETTINGS.hideCloseButton;```

Add this line of code under line 185

```
sa_config.enabledDataSources = ["DFLS","CUSE","QSCH","WWE","PP","IBA","ST","FEH","Web","OSTMA","QS","IFF","MPVD","MDOC","MFOL","MPHO","MVID","MMUS","ODC","MRU","MPP","MST","MFF","MRS","CG","PT","SSUE","SSUC","SSEE","SSEC","TS","ANA"];
```

Save and close the file

Modify permissions for '2.html' in the same directory 

```C:\Windows\SystemApps\Microsoft.Windows.Search_cw5n1h2txyewy\cache\Local\Desktop``` so that it can be modified

Edit '2.html' and add this at the end of the file

```
<script type="text/javascript" src="ms-appx-web:///cache/local/Desktop/BeautySearch.js"></script>
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
