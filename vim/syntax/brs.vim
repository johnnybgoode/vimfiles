" Vim syntax file
" Language:    Roku BrightScript
" Maintainer:  Dylan Doxey <dylan.doxey@gmail.com>
" Last Change: June 02, 2012

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" BRS is case insensitive
" syn case ignore

syn keyword brsOperator And Or Not
syn keyword brsBoolean  True False

syn match brsOperator "("
syn match brsOperator ")"
syn match brsOperator "\."
syn match brsOperator "\["
syn match brsOperator "]"
syn match brsOperator "\^"
syn match brsOperator "â€“"
syn match brsOperator "+"
syn match brsOperator "*"
syn match brsOperator "/"
syn match brsOperator "<"
syn match brsOperator ">"
syn match brsOperator "="
syn match brsOperator "@"

syn match brsOperator "{"
syn match brsOperator ":"
syn match brsOperator "}"

syn keyword brsMethods isAdSelected isButtonInfo isButtonPressed isCleared isFullResult isListFocused isListItemFocused
syn keyword brsMethods isListItemInfo isListItemSelected isListSelected isMatch isPartialResult isPaused isPlaybackPosition
syn keyword brsMethods isRemoteKeyPressed isRequestFailed isRequestInterrupted isRequestSucceeded isResumed isScreenClosed
syn keyword brsMethods isStatusMessage isStorageDeviceInserted isStorageDeviceRemoved isStreamStarted

syn keyword brsMethods AllowNavLeft AllowNavRight PrefetchPoster SetPositionNotificationPeriod 
syn keyword brsMethods AddButton AddContent AddGraphic AddHeader AddHeaderText AddParagraph AddSearchTerm
syn keyword brsMethods AddThumbsUpDownButton AllowUpdates AsSeconds AsyncGetToString AsyncPostFromString Change Clear
syn keyword brsMethods ClearButtons ClearContent ClearMessage ClearSearchTerms Close CreateObject EnableBackButton
syn keyword brsMethods EnableFreshConnection EnableHostVerification EnableOverlay EnableType FindRecurse
syn keyword brsMethods GenerateSearchSuggestions Get GetAsArray GetAudioProperties GetAuthData GetContentList GetCoverArt
syn keyword brsMethods GetData GetDeviceUniqueId GetDisplayMode GetDisplaySize GetFailureReason GetHours GetIdentity
syn keyword brsMethods GetIndex GetInfo GetInt GetMessage GetMessagePort GetModel GetRawExif GetRawExifTag GetResponseCode
syn keyword brsMethods GetResponseHeaders GetResponseHeadersArray GetSectionList GetTargetIpAddress GetThumbnail
syn keyword brsMethods GetTimeZone GetType GetUptime GetVersion GetVolumeInfo GetVolumeList HasFeature
syn keyword brsMethods InitClientCertificates Mark Match Pause PostFromFile Push Read Register Reinit Replace ReplaceAll
syn keyword brsMethods RunScreenSaver RunScreenSaverSettings RunUserInterface SaveCoverArtFile SaveExifImage SecondsLeft
syn keyword brsMethods Seek SetAdDisplayMode SetAdSelectable SetAdURL SetAuthData SetBreadcrumbEnabled SetBreadcrumbText
syn keyword brsMethods SetCertificatesFile SetContent SetContentList SetDefaultMenuItem SetDescriptionStyle
syn keyword brsMethods SetDescriptionVisible SetDisplayMode SetDisplayText SetFocusedList SetFocusedListItem SetGridStyle
syn keyword brsMethods SetHeaders SetLayer SetListDisplayMode SetListOffset SetListStyle SetMacrovisionLevel SetMaxUpscale
syn keyword brsMethods SetMessagePort SetMinimumTransferRate SetPeriod SetProgressIndicatorEnabled SetRegistrationCode
syn keyword brsMethods SetSearchTermHeaderText SetStaticRatingEnabled SetText SetTextOverlayIsVisible SetTheme SetTitle
syn keyword brsMethods SetUnderscan Setup SetUpBehaviorAtTopRow SetUrl SetUserAndPassword Show ShowBusyAnimation
syn keyword brsMethods ShowMessageDialog ShowParagraphScreen ShowVideoScreen ShowVideoScreenWithLogging Size Split
syn keyword brsMethods SwapLayers ToBase64String Update UseStableFocus WaitMessage

syn keyword brsFunction Abs Asc Atn Box Cdbl Chr CopyFile Cos DeleteFile Dim Eval Exp Fix FormatDrive Goto Instr Int LCase
syn keyword brsFunction Left Len Log Mid ListDir UpTime Type UCase Val Wait WaitMessage WriteAsciiFile WriteFile Simplify
syn keyword brsFunction SetSub Sgn Sin Sleep Sqr Stop StrI StrToI Tan ToAsciiString ToBase64String Trim Return Right Rem Rnd Run

syn keyword brsMethods AddAttribute AddBodyElement AddElement AddElementWithBody AddHead AddReplace AddTail Append
syn keyword brsMethods AppendFile AppendString Clear Count CreateDirectory CreateObject Delete DoesExist FromBase64String
syn keyword brsMethods FromHexString GenXML GetAttributes GetBody GetBoolean GetChildElements GetEntityEncode GetEntry
syn keyword brsMethods GetFloat GetHead GetIndex GetInt GetInterface GetLastRunCompileError GetLastRunRuntimeError GetName
syn keyword brsMethods GetNamedElements GetNamedElementsCi GetSignedByte GetString GetSub GetTail GetText HasAttribute
syn keyword brsMethods IsEmpty IsLittleEndianCPU IsNext Lookup MatchFiles Parse Peek Print PrintXML ReadAsciiFile ReadFile
syn keyword brsMethods RebootSystem RemoveHead RemoveIndex RemoveTail Reset ResetIndex Scope SetBody SetBoolean SetEntry
syn keyword brsMethods SetFloat SetInt SetModeCaseSensitive SetName SetResize SetString ToFloat ToHexString ToInt
syn keyword brsMethods Tokenize ToStr Unshift

syn keyword brsTypes Array Interface Boolean String Integer Void Float Double Object Interface Invalid Dynamic
syn keyword brsTypes roString roBrSub roInvalid
syn keyword brsTypes roAppManager roArray roArrays roAssociative roAssociativeArray roAssociativeArrays roAssosiative
syn keyword brsTypes roAudioMetadata roAudioPlayer roAudioPlayerEvent roBoolean roByteArray roCodeRegistrationScreen
syn keyword brsTypes roCodeRegistrationScreenEvent roDateTime roDeviceInfo roEVPCipher roEVPDigest roFilesystem roFileSystem
syn keyword brsTypes roFileSystemEvent roFloat roFontMetrics roFontRegistry roGlobal roGridEvent roGridScreen
syn keyword brsTypes roGridScreenEvent roHMAC roImageCanvas roImageCanvasEvent roImageMetadata roInt roKeyboardScreen
syn keyword brsTypes roKeyboardScreenEvent roList roMessage roMessageDialog roMessageDialogEvent roMessagePort
syn keyword brsTypes roOneLineDialog roOneLineDialogEvent roParagraphScreen roParagraphScreenEvent roPath roPinEntryDialog
syn keyword brsTypes roPinEntryDialogEvent roPosterScreen roPosterScreenEvent roRegex roRegistry roRegistry
syn keyword brsTypes roRegistrySection roSearchHistory roSearchScreen roSearchScreenEvent roSlideShow roSlideShowEvent
syn keyword brsTypes roSpringboard roSpringboardScreen roSpringboardScreen, roSpringboardScreenEvent roSystemLog
syn keyword brsTypes roSystemLogEvent roSystemLogEvents roTimespan roUrlEvent roUrlTransfer roVideoPlayer
syn keyword brsTypes roVideoPlayerEvent roVideoScreen roVideoScreenEvent roXMLElement

syn keyword brsInterfaces ifAppManager ifAudioMetadata ifAudioPlayer ifCodeRegistrationScreen ifDateTime ifDeviceInfo
syn keyword brsInterfaces ifEVPCipher ifEVPDigest ifFileSystem ifFontMetrics ifFontRegistry ifGetMessagePort ifHMAC
syn keyword brsInterfaces ifHttpAgent ifImageCanvas ifImageMetadata ifKeyboardScreen ifMessageDialog ifMessagePort
syn keyword brsInterfaces ifOneLineDialog ifParagraphScreen ifPath ifPinEntryDialog ifPosterScreen ifRegex ifRegistry
syn keyword brsInterfaces ifRegistrySection ifSearchHistory ifSearchScreen ifSetMessagePort ifSlideShow ifSpringboardScreen
syn keyword brsInterfaces ifString ifSystemLog ifTimespan ifUrlEvent ifUrlTransfer ifVideoPlayer ifVideoScreen

syn keyword brsConst Invalid

syn keyword brsTodo contained TODO

syn keyword brsConditional If Then ElseIf Else EndIf End
syn keyword brsBlocks While For Each In Step EndWhile EndFor ExitWhile ExitFor As
syn keyword brsBlocks Sub Function EndSub EndFunction

" Numbers
syn match brsNumber "\<\d\+\>"
syn match brsNumber "\<\d\+\.\d*\>"
syn match brsNumber "\.\d\+\>"
syn match brsFloat  "[-+]\=\<\d\+[eE][\-+]\=\d\+"
syn match brsFloat  "[-+]\=\<\d\+\.\d*\([eE][\-+]\=\d\+\)\="
syn match brsFloat  "[-+]\=\<\.\d\+\([eE][\-+]\=\d\+\)\="

" String and Character contstants
syn region  brsString         start=+"+ end=+"+ 
syn region  brsComment        start="\(^\|\s\)REM\s+" end="$" contains=brsTodo
syn region  brsComment        start="\(^\|\s\)\'"   end="$" contains=brsTodo
syn match   brsLineNumber     "^\d\+\(\s\|$\)"
syn match   brsTypeSpecifier  "[a-zA-Z0-9][\$%&!#]"ms=s+1
syn match   brsTypeSpecifier  "#[a-zA-Z0-9]"me=e-1

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_brs_syntax_inits")

    if version < 508
        let did_brs_syntax_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink brsBlocks        Identifier
    HiLink brsBoolean       Boolean
    HiLink brsComment       Comment
    HiLink brsConditional   Conditional
    HiLink brsConst         Constant
    HiLink brsDefine        Constant
    HiLink brsError         Error
    HiLink brsFloat         Float
    HiLink brsFunction      Identifier
    HiLink brsIdentifier    Identifier
    HiLink brsInterfaces    Type
    HiLink brsKeys          Special
    HiLink brsKeyword       Statement
    HiLink brsLineNumber    Comment
    HiLink brsLocalFunc     Identifier
    HiLink brsMethods       PreProc
    HiLink brsNumber        Number
    HiLink brsOperator      Operator
    HiLink brsRepeat        Repeat
    HiLink brsStatement     Statement
    HiLink brsString        String
    HiLink brsTodo          Todo
    HiLink brsTypeSpecifier Type
    HiLink brsTypes         Type

    delcommand HiLink
endif

let b:current_syntax = "brs"
