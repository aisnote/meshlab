; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "MeshLab"
!define PRODUCT_VERSION "1.2.0 alpha"
!define PRODUCT_PUBLISHER "Paolo Cignoni VCG - ISTI - CNR"
!define PRODUCT_WEB_SITE "http://meshlab.sourceforge.net"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\meshlab.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define QT_BASE "C:\Qt\4.3.3"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "..\..\docs\gpl.txt"
; License page
!insertmacro MUI_PAGE_LICENSE "..\..\docs\privacy.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES


; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\meshlab.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------
!define /date NOW "%Y_%m_%d"

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "MeshLabSetup_v120ALPHA_${NOW}.exe"
InstallDir "$PROGRAMFILES\VCG\MeshLab"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite on
  File "..\meshlab\release\meshlab.exe"
  File "..\meshlabserver\release\meshlabserver.exe"

  CreateDirectory "$SMPROGRAMS\MeshLab"
  CreateShortCut "$SMPROGRAMS\MeshLab\MeshLab.lnk" "$INSTDIR\meshlab.exe"
  CreateShortCut "$DESKTOP\MeshLab.lnk" "$INSTDIR\meshlab.exe"
  SetOutPath "$INSTDIR\shaders"
  File "..\meshlab\shaders\*.frag"
  File "..\meshlab\shaders\*.gdp"
  File "..\meshlab\shaders\*.vert"
  SetOutPath "$INSTDIR\plugins"
  ; IO Plugins (7)
  File "..\meshlab\plugins\baseio.dll"
  File "..\meshlab\plugins\epoch_io.dll"
  File "..\meshlab\plugins\colladaio.dll"
  File "..\meshlab\plugins\meshio.dll"
  File "..\meshlab\plugins\io_u3d.dll"
  File "..\meshlab\plugins\io_x3d.dll"
  File "..\meshlab\plugins\io_tri.dll"
  ; filter plugins (17)
  File "..\meshlab\plugins\cleanfilter.dll"
  File "..\meshlab\plugins\meshfilter.dll"
  File "..\meshlab\plugins\meshcolorize.dll"
  File "..\meshlab\plugins\meshselect.dll"
  File "..\meshlab\plugins\samplefilter.dll"
  
  File "..\meshlab\plugins\samplefilterdoc.dll"
  File "..\meshlab\plugins\filtergeodesic.dll"
  File "..\meshlab\plugins\filtercreateiso.dll"
  File "..\meshlab\plugins\filterborder.dll"
  File "..\meshlab\plugins\filter_aging.dll"

  File "..\meshlab\plugins\filter_ao.dll"
  File "..\meshlab\plugins\filter_poisson.dll"
  File "..\meshlab\plugins\filter_quality.dll"
  File "..\meshlab\plugins\filter_sampling.dll"
  File "..\meshlab\plugins\filter_splitter.dll"

  File "..\meshlab\plugins\filter_trioptimize.dll"
  File "..\meshlab\plugins\filter_unsharp.dll"
  ; edit plugins (13)
  File "..\meshlab\plugins\editalign.dll"
  File "..\meshlab\plugins\editmeasure.dll"
  File "..\meshlab\plugins\editpaint.dll"
  File "..\meshlab\plugins\editrgbtri.dll"
  File "..\meshlab\plugins\editsegment.dll"

  File "..\meshlab\plugins\editslice.dll"
  File "..\meshlab\plugins\editstraightener.dll"
  File "..\meshlab\plugins\sampleedit.dll"
  File "..\meshlab\plugins\edit_morpher.dll"
  File "..\meshlab\plugins\edit_pickpoints.dll"

  File "..\meshlab\plugins\edit_quality.dll"
  File "..\meshlab\plugins\edit_select.dll"
  File "..\meshlab\plugins\edit_texture.dll"
  ; decorate plugins (2)
  File "..\meshlab\plugins\meshdecorate.dll"
  File "..\meshlab\plugins\sampledecoration.dll"
  ; render plugins (1)
  File "..\meshlab\plugins\meshrender.dll"
  
  ; All the U3D binary stuff
  SetOutPath "$INSTDIR\plugins\U3D_W32"
  File "..\meshlab\plugins\U3D_W32\IDTFConverter.exe"
  File "..\meshlab\plugins\U3D_W32\*.dll"
  File "..\meshlab\plugins\U3D_W32\*.txt"
  SetOutPath "$INSTDIR\plugins\U3D_W32\plugins"
  File "..\meshlab\plugins\U3D_W32\*.dll"

  SetOutPath "$INSTDIR\textures"
  File "..\meshlab\textures\chrome.png"
  SetOutPath "$INSTDIR\textures\cubemaps"
  File "..\meshlab\textures\cubemaps\uffizi*.jpg"
  SetOutPath "$INSTDIR\samples"
  File "..\sample\texturedknot.ply"
  File "..\sample\texturedknot.obj"
  File "..\sample\texturedknot.mtl"
  File "..\sample\TextureDouble_A.png"
  File "..\sample\Laurana50k.ply"
  File "..\sample\duck_triangulate.dae"
  SetOutPath "$INSTDIR\samples\images"
  File "..\sample\images\duckCM.jpg"
  SetOutPath "$INSTDIR\imageformats"
  File ${QT_BASE}\plugins\imageformats\qjpeg4.dll
  File ${QT_BASE}\plugins\imageformats\qgif4.dll
  File ${QT_BASE}\plugins\imageformats\qtiff4.dll
  SetOutPath "$INSTDIR"
  File "${QT_BASE}\bin\QtCore4.dll"
  File "${QT_BASE}\bin\QtGui4.dll"
  File "${QT_BASE}\bin\QtOpenGL4.dll"
  File "${QT_BASE}\bin\QtXml4.dll"
  File "${QT_BASE}\bin\QtNetwork4.dll"
  File "C:\MinGW\bin\mingwm10.dll"
  File "..\..\docs\readme.txt"
  File "..\..\docs\history.txt"
  File "..\..\docs\gpl.txt"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\MeshLab\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\MeshLab\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\meshlab.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\meshlab.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\qt*.dll"
  Delete "$INSTDIR\*.txt"
  Delete "$INSTDIR\ming*.dll"
  Delete "$INSTDIR\*.exe"
  Delete "$INSTDIR\shaders\*.frag"
  Delete "$INSTDIR\shaders\*.vert"
  Delete "$INSTDIR\shaders\*.gdp"
  Delete "$INSTDIR\samples\*.*"
  Delete "$INSTDIR\samples\images\*.*"
  Delete "$INSTDIR\plugins\*.dll"
  Delete "$INSTDIR\imageformats\*.dll"
  Delete "$INSTDIR\textures\*.png"

  Delete "$SMPROGRAMS\MeshLab\Uninstall.lnk"
  Delete "$SMPROGRAMS\MeshLab\Website.lnk"
  Delete "$DESKTOP\MeshLab.lnk"
  Delete "$SMPROGRAMS\MeshLab\MeshLab.lnk"

  RMDir "$SMPROGRAMS\MeshLab"
  RMDir "$INSTDIR\CVS"
  RMDir "$INSTDIR\imageformats"
  RMDir "$INSTDIR\plugins"
  RMDir "$INSTDIR\plugins\U3D_W32"
  RMDir "$INSTDIR\plugins\U3D_W32\plugins"
  RMDir "$INSTDIR\samples\images"
  RMDir "$INSTDIR\samples"
  RMDir "$INSTDIR\textures"
  RMDir "$INSTDIR\textures\cubemaps"
  RMDir "$INSTDIR\shaders"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd

  ;******************** PARTE SPERIMENTALE SULLE ASSOCIAZIONI FILE ****************
;Things that need to be extracted on startup (keep these lines before any File command!)
;Only useful for BZIP2 compression
;Use ReserveFile for your own InstallOptions INI files too!

!define TEMP1 $R0 ;Temp variable

ReserveFile "${NSISDIR}\Plugins\InstallOptions.dll"
; ReserveFile "fileassociation_nsis.ini"

;Order of pages
; la prox linea se scommnentata serve ad abilitare il loading di una pagine aggiuntiva
; in cui si settano le associazioni file extensions-registro per il meshlab.
; Page custom SetCustom ValidateCustom ": Testing InstallOptions" ;Custom page. InstallOptions gets called in SetCustom.
;Page instfiles

Section "Components"

  ;Get Install Options dialog user input

  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 2" "State"
  DetailPrint "Install X=${TEMP1}"
  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 3" "State"
  DetailPrint "Install Y=${TEMP1}"
  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 4" "State"
  DetailPrint "Install Z=${TEMP1}"
  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 5" "State"
  DetailPrint "File=${TEMP1}"
  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 6" "State"
  DetailPrint "Dir=${TEMP1}"
  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 8" "State"
  DetailPrint "Info=${TEMP1}"

SectionEnd

Function .onInit

  ;Extract InstallOptions files
  ;$PLUGINSDIR will automatically be removed when the installer closes

  InitPluginsDir
;  File /oname=$PLUGINSDIR\fileassociation_nsis.ini "fileassociation_nsis.ini"

FunctionEnd

Function SetCustom

  ;Display the InstallOptions dialog

  Push ${TEMP1}

    InstallOptions::dialog "$PLUGINSDIR\fileassociation_nsis.ini"
    Pop ${TEMP1}

  Pop ${TEMP1}

FunctionEnd

Function ValidateCustom

  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 2" "State"
  StrCmp ${TEMP1} 1 done

  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 3" "State"
  StrCmp ${TEMP1} 1 done

  ReadINIStr ${TEMP1} "$PLUGINSDIR\fileassociation_nsis.ini" "Field 4" "State"
  StrCmp ${TEMP1} 1 done
    MessageBox MB_ICONEXCLAMATION|MB_OK "You must select at least one install option!"
    Abort

  done:

FunctionEnd
