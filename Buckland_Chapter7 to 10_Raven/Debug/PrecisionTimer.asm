; Listing generated by Microsoft (R) Optimizing Compiler Version 19.32.31329.0 

	TITLE	D:\코딩\Raven\Buckland_Chapter7 to 10_Raven\Debug\PrecisionTimer.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	??0PrecisionTimer@@QAE@XZ			; PrecisionTimer::PrecisionTimer
PUBLIC	??0PrecisionTimer@@QAE@N@Z			; PrecisionTimer::PrecisionTimer
PUBLIC	?Start@PrecisionTimer@@QAEXXZ			; PrecisionTimer::Start
PUBLIC	__real@3ff0000000000000
EXTRN	__imp__QueryPerformanceCounter@4:PROC
EXTRN	__imp__QueryPerformanceFrequency@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__dtol3:PROC
EXTRN	__ltod3:PROC
EXTRN	__fltused:DWORD
;	COMDAT __real@3ff0000000000000
CONST	SEGMENT
__real@3ff0000000000000 DQ 03ff0000000000000r	; 1
CONST	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\코딩\Raven\Common\Time\PrecisionTimer.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Start@PrecisionTimer@@QAEXXZ PROC			; PrecisionTimer::Start
; _this$ = ecx

; 61   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx

; 62   :   m_bStarted = true;

	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+96], 1

; 63   :   
; 64   :   m_TimeElapsed = 0.0;

	mov	ecx, DWORD PTR _this$[ebp]
	xorps	xmm0, xmm0
	movsd	QWORD PTR [ecx+56], xmm0

; 65   : 
; 66   :   //get the time
; 67   :   QueryPerformanceCounter( (LARGE_INTEGER*) &m_LastTime);

	mov	edx, DWORD PTR _this$[ebp]
	add	edx, 8
	mov	esi, esp
	push	edx
	call	DWORD PTR __imp__QueryPerformanceCounter@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 68   : 
; 69   :   //keep a record of when the timer was started
; 70   :   m_StartTime = m_LastTimeInTimeElapsed = m_LastTime;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	ecx, DWORD PTR [ecx+12]
	mov	DWORD PTR [eax+16], edx
	mov	DWORD PTR [eax+20], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+16]
	mov	eax, DWORD PTR [eax+20]
	mov	DWORD PTR [edx+32], ecx
	mov	DWORD PTR [edx+36], eax

; 71   : 
; 72   :   //update time to render next frame
; 73   :   m_NextTime = m_LastTime + m_FrameTime;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx+8]
	add	eax, DWORD PTR [edx+40]
	mov	ecx, DWORD PTR [ecx+12]
	adc	ecx, DWORD PTR [edx+44]
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+24], eax
	mov	DWORD PTR [edx+28], ecx

; 74   : 
; 75   :   return;
; 76   : }

	pop	esi
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Start@PrecisionTimer@@QAEXXZ ENDP			; PrecisionTimer::Start
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\코딩\Raven\Common\Time\PrecisionTimer.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
_fps$ = 8						; size = 8
??0PrecisionTimer@@QAE@N@Z PROC				; PrecisionTimer::PrecisionTimer
; _this$ = ecx

; 41   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx

; 34   :                   m_LastTime(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+8], ecx
	mov	DWORD PTR [eax+12], edx

; 35   :                   m_LastTimeInTimeElapsed(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+16], ecx
	mov	DWORD PTR [eax+20], edx

; 38   :                   m_StartTime(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+32], ecx
	mov	DWORD PTR [eax+36], edx

; 33   :                   m_FrameTime(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+40], ecx
	mov	DWORD PTR [eax+44], edx

; 36   :                   m_PerfCountFreq(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+48], ecx
	mov	DWORD PTR [eax+52], edx

; 32   :                   m_TimeElapsed(0.0),

	mov	eax, DWORD PTR _this$[ebp]
	xorps	xmm0, xmm0
	movsd	QWORD PTR [eax+56], xmm0

; 39   :                   m_LastTimeElapsed(0.0),

	mov	ecx, DWORD PTR _this$[ebp]
	xorps	xmm0, xmm0
	movsd	QWORD PTR [ecx+64], xmm0

; 30   : PrecisionTimer::PrecisionTimer(double fps): m_NormalFPS(fps),

	mov	edx, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR _fps$[ebp]
	movsd	QWORD PTR [edx+80], xmm0

; 31   :                   m_SlowFPS(1.0),

	mov	eax, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR __real@3ff0000000000000
	movsd	QWORD PTR [eax+88], xmm0

; 37   :                   m_bStarted(false),

	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+96], 0

; 40   :                   m_bSmoothUpdates(false)

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+97], 0

; 42   : 
; 43   :   //how many ticks per sec do we get
; 44   :   QueryPerformanceFrequency( (LARGE_INTEGER*) &m_PerfCountFreq);

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 48					; 00000030H
	mov	esi, esp
	push	eax
	call	DWORD PTR __imp__QueryPerformanceFrequency@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 45   : 
; 46   :   m_TimeScale = 1.0/m_PerfCountFreq;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx+48]
	mov	edx, DWORD PTR [ecx+52]
	mov	ecx, eax
	call	__ltod3
	movsd	xmm1, QWORD PTR __real@3ff0000000000000
	divsd	xmm1, xmm0
	mov	ecx, DWORD PTR _this$[ebp]
	movsd	QWORD PTR [ecx+72], xmm1

; 47   : 
; 48   :   //calculate ticks per frame
; 49   :   m_FrameTime = (LONGLONG)(m_PerfCountFreq / m_NormalFPS);

	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+48]
	mov	edx, DWORD PTR [edx+52]
	call	__ltod3
	mov	eax, DWORD PTR _this$[ebp]
	divsd	xmm0, QWORD PTR [eax+80]
	call	__dtol3
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+40], eax
	mov	DWORD PTR [ecx+44], edx

; 50   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	esi
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	8
??0PrecisionTimer@@QAE@N@Z ENDP				; PrecisionTimer::PrecisionTimer
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File D:\코딩\Raven\Common\Time\PrecisionTimer.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
??0PrecisionTimer@@QAE@XZ PROC				; PrecisionTimer::PrecisionTimer
; _this$ = ecx

; 18   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx

; 11   :                   m_LastTime(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+8], ecx
	mov	DWORD PTR [eax+12], edx

; 12   :                   m_LastTimeInTimeElapsed(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+16], ecx
	mov	DWORD PTR [eax+20], edx

; 15   :                   m_StartTime(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+32], ecx
	mov	DWORD PTR [eax+36], edx

; 10   :                   m_FrameTime(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+40], ecx
	mov	DWORD PTR [eax+44], edx

; 13   :                   m_PerfCountFreq(0),

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	xor	edx, edx
	mov	DWORD PTR [eax+48], ecx
	mov	DWORD PTR [eax+52], edx

; 9    :                   m_TimeElapsed(0.0),

	mov	eax, DWORD PTR _this$[ebp]
	xorps	xmm0, xmm0
	movsd	QWORD PTR [eax+56], xmm0

; 16   :                   m_LastTimeElapsed(0.0),

	mov	ecx, DWORD PTR _this$[ebp]
	xorps	xmm0, xmm0
	movsd	QWORD PTR [ecx+64], xmm0

; 7    : PrecisionTimer::PrecisionTimer(): m_NormalFPS(0.0),

	mov	edx, DWORD PTR _this$[ebp]
	xorps	xmm0, xmm0
	movsd	QWORD PTR [edx+80], xmm0

; 8    :                   m_SlowFPS(1.0),

	mov	eax, DWORD PTR _this$[ebp]
	movsd	xmm0, QWORD PTR __real@3ff0000000000000
	movsd	QWORD PTR [eax+88], xmm0

; 14   :                   m_bStarted(false),

	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+96], 0

; 17   :                   m_bSmoothUpdates(false)

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+97], 0

; 19   :   //how many ticks per sec do we get
; 20   :   QueryPerformanceFrequency( (LARGE_INTEGER*) &m_PerfCountFreq);

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 48					; 00000030H
	mov	esi, esp
	push	eax
	call	DWORD PTR __imp__QueryPerformanceFrequency@4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 21   :   
; 22   :   m_TimeScale = 1.0/m_PerfCountFreq;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx+48]
	mov	edx, DWORD PTR [ecx+52]
	mov	ecx, eax
	call	__ltod3
	movsd	xmm1, QWORD PTR __real@3ff0000000000000
	divsd	xmm1, xmm0
	mov	ecx, DWORD PTR _this$[ebp]
	movsd	QWORD PTR [ecx+72], xmm1

; 23   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	esi
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??0PrecisionTimer@@QAE@XZ ENDP				; PrecisionTimer::PrecisionTimer
_TEXT	ENDS
END
