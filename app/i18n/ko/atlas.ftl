### Fluxxwave Manager: Korean (ko), preview translation. Written 20 November 2026 from the en-GB source (i18n/en-GB/atlas.ftl).
###
### Conventions for this catalog:
### - Polite 합니다/하세요 form for sentences; noun or verb-stem labels for
###   buttons and headings, as Windows does (다시 시도, 취소, 완료).
### - Windows names as Korean Windows 11 shows them (Windows 보안, 변조 보호,
###   실시간 보호, 클라우드 전송 보호, 자동 샘플 전송, Windows 업데이트).
### - A button, card or step named inside a sentence goes in ‘ ’.
### - Korean has only the "other" plural category; exact [1]/[2] are used
###   where the wording changes.
### - No particle directly after a variable where it can be avoided;
###   otherwise the paired form, such as 을(를) or (으)로.
### - "Relaunch" (Fluxxwave Manager) is 다시 실행; "restart" (the PC or
###   Windows) is 다시 시작. Never swap them.
### - "Fluxxwave package" (the .apbx file) is "Fluxxwave 패키지".
### - Messages about the Atlas team, community, guide and Toolbox keep the
###   name Atlas: those services still belong to the upstream project.

## 공통

app-name = Fluxxwave Manager
common-done = 완료
common-cancel = 취소
common-back = 뒤로
common-next = 계속
common-dismiss = 닫기
common-change = 변경
common-copy = 복사
common-none = 없음
common-back-to-home = 홈으로 돌아가기
common-settings = 설정
common-close-settings = 설정 닫기
common-open-windows-security = Windows 보안 열기
common-restart-as-administrator = 관리자 권한으로 다시 실행
common-try-again = 다시 시도
common-read-the-docs = Atlas 가이드 읽기
common-show-details = 세부 정보 표시
common-hide-details = 세부 정보 숨기기
common-details-a11y = { $action }, { $section }
common-open-log-file = 로그 파일 열기
common-copy-install-log = 설치 로그 복사
common-install-log = 설치 로그
common-windows = Windows
common-options = 옵션
common-package = 설치 파일
common-installed-as = 설치 유형
common-installed = 설치됨
common-checking = 확인 중
list-separator = { ", " }
list-or = { $a } 또는 { $b }
list-and = { $a } 및 { $b }
infobar-a11y = { $title }. { $message }

## 창

window-close-title = Fluxxwave 설치 중에 닫으시겠습니까?
window-close-message = 설치는 백그라운드에서 계속됩니다. 진행 상황과 결과를 확인하려면 Fluxxwave를 다시 여세요. 설치가 끝날 때까지 PC를 켜 두세요.
window-close-message-restart = 설치는 백그라운드에서 계속되지만, Fluxxwave가 닫혀 있는 동안에는 PC가 자동으로 다시 시작되지 않습니다. 진행 상황과 결과를 확인하려면 Fluxxwave를 다시 여세요. 설치가 끝날 때까지 PC를 켜 두세요.
window-close-keep = 열어 두기
window-close-close = 창 닫기
window-close-preparing-title = 설치를 시작하기 전에 닫으시겠습니까?
window-close-preparing-message = Fluxxwave가 아직 PC를 검사하는 중이며 설치를 시작하지 않았습니다. 지금 닫으면 설치가 시작되지 않습니다. 계속하려면 Fluxxwave를 다시 여세요.
prepare-close-title = 업데이트가 아직 진행 중입니다
prepare-close-message = 업데이트가 진행되는 동안 Fluxxwave를 열어 두세요. ‘업데이트 중지’를 선택하면 현재 단계가 끝난 뒤 업데이트가 중지되며, 그때 Fluxxwave를 닫을 수 있습니다.
window-close-restart-title = 다시 시작하지 않고 Fluxxwave를 닫으시겠습니까?
window-close-restart-message = Fluxxwave 설정을 마치려면 PC를 다시 시작해야 합니다. 지금 Fluxxwave를 닫으면 PC가 자동으로 다시 시작되지 않으므로, 준비되면 직접 다시 시작하세요. ‘지금 다시 시작’을 선택하기 전에 작업을 저장하세요.
window-close-restart-close = 다시 시작하지 않고 닫기
window-close-protection-title = 보호가 꺼진 상태로 Fluxxwave를 닫으시겠습니까?
window-close-protection-message = Windows 보안의 일부 보호가 아직 꺼져 있습니다: { $switches }. Fluxxwave 설치를 끝내지 않을 거라면 닫기 전에 다시 켜세요. 끝낼 거라면 Fluxxwave를 다시 열 때 설정이 이어집니다.
file-dialog-open-package = Fluxxwave 패키지(.apbx) 열기
shutdown-comment = Fluxxwave가 설치되었습니다. 설정을 마치기 위해 Windows를 다시 시작합니다.
prepare-shutdown-comment = 업데이트 설치를 마치기 위해 Fluxxwave가 Windows를 다시 시작합니다.

## 시스템

system-description = { $product } { $version }(빌드 { $build })

## 홈 페이지

home-not-installed = Fluxxwave에 오신 것을 환영합니다
home-state-unknown = 이 PC의 Fluxxwave
home-version = Fluxxwave { $version }
home-installed-on = 설치 날짜: { $date }
home-status-checking = 업데이트 확인 중
home-status-recovering = 진행 중인 설치 확인 중
home-status-offline = 업데이트를 확인하지 못했습니다
home-status-not-checked = 아직 업데이트를 확인하지 않았습니다
home-status-update = Fluxxwave { $version } 사용 가능
home-status-up-to-date = 최신 상태
home-status-newest = 최신 버전: Fluxxwave { $version }
home-status-unfinished = Fluxxwave { $version } 설치가 완료되지 않았습니다
home-check-again = 다시 확인
home-show-install = 진행 상황 보기
home-continue-installing = 설정 계속
home-update-to = Fluxxwave { $version }(으)로 업데이트
home-reinstall = Fluxxwave 다시 설치
home-install = Fluxxwave 설치
home-finish-install = Fluxxwave { $version } 설치 마치기
home-start-over = 처음부터 다시
home-restart-title = PC를 다시 시작해야 합니다
home-security-reminder-title = 보호를 다시 켜세요
home-security-reminder-unreadable-title = 보호가 켜져 있는지 확인하세요
home-security-reminder-message = Fluxxwave가 설치 중인 항목은 없지만 Windows 보안의 일부 보호가 아직 꺼져 있습니다. Windows 보안을 열어 다음 항목이 켜져 있는지 확인하세요: { $switches }.
home-security-reminder-unreadable-message = Fluxxwave가 일부 보호 스위치를 읽지 못했습니다. Windows 보안에서 다음 항목이 켜져 있는지 확인하세요: { $switches }.
home-elevation-title = Fluxxwave를 설치하려면 권한이 필요합니다
home-state-error-title = Fluxxwave 설치 정보를 읽지 못했습니다
home-state-error-message = Fluxxwave 버전, 선택 사항, 기록이 올바르게 표시되지 않을 수 있습니다. ‘다시 확인’을 선택해 다시 시도하세요. 세부 정보: { $error }
home-whats-new = Fluxxwave { $version }의 새로운 기능
home-view-release = GitHub에서 릴리스 정보 보기
home-released = 릴리스 날짜: { $date }
home-show-less = 간단히 보기
home-show-full-notes = 릴리스 정보 모두 보기
home-your-install = 내 Fluxxwave 설정
home-install-unrecorded = 이 PC에는 Fluxxwave를 어떻게 설치했는지에 대한 기록이 없어서 선택 사항과 설치 기록을 표시할 수 없습니다.
home-set-up = 설치 방법
home-set-up-during-oobe = Windows 설치 중
home-history = 설치 기록
home-history-entry = Fluxxwave { $version } · { $mode } · { $date }
home-how-it-works = PC에 Fluxxwave를 설치할 준비를 시작합니다
home-step-1-detail = Fluxxwave가 PC를 검사하고, 대기 중인 Windows 및 Microsoft Store 업데이트를 설치하고, 설치 파일을 다운로드합니다. Store 앱이 닫히거나 PC를 다시 시작해야 할 수 있으니 먼저 작업을 저장하세요.
home-step-1-detail-bundled = Fluxxwave가 PC를 검사하고, 대기 중인 Windows 및 Microsoft Store 업데이트를 설치하고, 내장된 설치 파일을 준비합니다. Store 앱이 닫히거나 PC를 다시 시작해야 할 수 있으니 먼저 작업을 저장하세요.
home-step-2-detail = Microsoft Defender와 프로세서 보호를 유지할지, Windows 업데이트를 어떻게 설치할지, 추가 옵션을 사용할지 선택합니다.
home-step-3-detail = 설치가 차단되지 않도록 Windows 보안에서 보호 스위치 4개를 끕니다. 방법은 Fluxxwave가 안내합니다.
home-step-4-detail = 설치에는 약 { $minutes }분이 걸립니다. 그런 다음 PC를 다시 시작해야 합니다.
home-step-a11y = { $number }단계: { $title }
home-github = GitHub에서 Atlas 보기
home-discord = Atlas 커뮤니티 참여
home-report-problem = 문제 신고

## 설치 방식(상태 문서에서 가져옴)

mode-fresh = 첫 설치
mode-upgrade = 이전 버전에서 업데이트
mode-reapply = 같은 버전 다시 설치
mode-unknown = 설치
history-mode-fresh = 첫 설치
history-mode-upgrade = 업데이트
history-mode-reapply = 다시 설치
history-mode-unknown = 설치

## 홈 페이지의 알림

notice-settings-reset-title = Fluxxwave가 기본 앱 설정을 사용하고 있습니다
notice-settings-unreadable = Fluxxwave가 저장된 앱 설정을 읽지 못했습니다. Windows 설정은 바뀌지 않았습니다. 세부 정보: { $error }
notice-settings-damaged-kept = 앱 설정 파일이 손상되어 초기화했습니다. 이전 파일의 복사본은 { $file } 이름으로 저장되어 있습니다. 세부 정보: { $error }
notice-settings-damaged = 앱 설정 파일이 손상되었습니다. 지금은 Fluxxwave가 기본값을 사용합니다. 세부 정보: { $error }
notice-settings-not-saved-title = 앱 설정을 저장하지 못했습니다
notice-settings-not-saved = Fluxxwave가 최근 변경 내용을 저장하지 못해서, Fluxxwave를 닫으면 변경 내용이 사라질 수 있습니다. 다른 Fluxxwave 창이 열려 있으면 닫은 다음 다시 변경하세요. 세부 정보: { $error }
notice-session-unreadable-title = 이전 설치를 확인하지 못했습니다
notice-session-unreadable-message = Fluxxwave가 이전 설치가 아직 실행 중인지 확인하지 못했습니다. 잘 모르겠다면 Atlas 커뮤니티에 도움을 요청하세요. 실행 중인 설치가 없다고 확신할 때에만 { $path } 파일을 삭제하고 다시 시도하세요. 세부 정보: { $error }

## 관리자 권한 상승

elevation-declined = 권한이 부여되지 않았습니다. 다시 시도한 뒤, Fluxxwave가 변경할 수 있도록 허용할지 Windows가 물으면 ‘예’를 선택하세요.
elevation-declined-continue = 권한이 부여되지 않았습니다. 다시 시도한 뒤, Fluxxwave가 변경할 수 있도록 허용할지 Windows가 물으면 ‘예’를 선택하세요. 설정 선택 사항은 저장되어 있습니다.
elevation-draft-not-saved = Fluxxwave가 설정 선택 사항을 저장하지 못해서 다시 실행하지 않았습니다. 다시 시도하세요. 세부 정보: { $error }
elevation-taken-over = 다른 Fluxxwave 창이 이 설정을 사용하고 있어서 Fluxxwave를 다시 실행하지 않았습니다. 그 창에서 계속하거나, ‘처음부터 다시’를 선택해 여기에서 다시 설정하세요.

## 설치 흐름

step-ready = 준비
step-options = 선택 사항
step-security = Windows 보안
step-install = 설치
install-title = Fluxxwave 설정
stepper-label = Fluxxwave 설정 단계
stepper-step-a11y = { $total }단계 중 { $number }단계, { $title }, { $status }
stepper-status-completed = 완료됨
stepper-status-current = 현재 단계
stepper-status-upcoming = 예정된 단계
stepper-status-attention = 확인 필요
step-heading = { $total }단계 중 { $number }단계: { $title }
step-heading-choice-a11y = { $heading }. { $progress }: { $question }
step-heading-extras-a11y = { $heading }. { $progress }
step-heading-update-path-a11y = { $heading }. { $question }

## 1단계: 준비

ready-banner-busy-title = PC를 준비하는 중
ready-banner-busy-message = Fluxxwave가 PC를 검사하고 설치 파일을 준비하고 있습니다.
ready-banner-blocked-title = PC가 아직 준비되지 않았습니다
ready-banner-blocked-message = ‘PC 검사’에 표시된 항목을 해결한 다음 ‘다시 확인’을 선택하세요.
ready-banner-no-package-title = 계속하려면 Fluxxwave를 다운로드하세요
ready-banner-no-package-message = ‘설치 파일’에서 Fluxxwave를 다운로드하거나, Fluxxwave 패키지(.apbx)가 이미 있으면 ‘패키지 파일 열기’를 선택하세요.
ready-banner-no-package-bundled-title = 계속하려면 내장된 Fluxxwave 패키지를 준비하세요
ready-banner-no-package-bundled-message = 이 테스트 빌드에 내장된 Fluxxwave 패키지가 아직 준비되지 않았습니다. ‘설치 파일’ 카드를 확인하세요.
ready-banner-updates-title = 계속하려면 Windows와 Store 앱을 업데이트하세요
ready-banner-updates-message = ‘업데이트 확인 및 설치’를 선택하세요. 업데이트가 끝나면 Fluxxwave가 PC를 다시 검사합니다.
ready-banner-updating-title = Windows와 Store 앱을 업데이트하는 중
ready-banner-updating-message = 시간이 걸릴 수 있습니다. Fluxxwave를 열어 두세요. 진행 상황은 ‘Windows 및 Store 앱 업데이트’에서 볼 수 있습니다.
ready-banner-updates-stopped-title = 업데이트가 중지되었습니다
ready-banner-updates-stopped-message = 업데이트를 마치려면 ‘Windows 및 Store 앱 업데이트’에서 ‘업데이트 확인 및 설치’를 선택하세요.
ready-banner-updates-resumed-title = PC가 다시 시작되었습니다
ready-banner-updates-resumed-message = 업데이트를 마치려면 ‘Windows 및 Store 앱 업데이트’에서 ‘업데이트 계속’을 선택하세요.
ready-banner-updates-failed-message = ‘Windows 및 Store 앱 업데이트’에서 해결 방법을 확인한 다음 ‘다시 시도’를 선택하세요.
ready-banner-reboot-message = 먼저 작업을 저장한 다음 ‘Windows 및 Store 앱 업데이트’에서 ‘다시 시작하고 계속’을 선택하세요.

ready-banner-warnings-title = 검토할 항목이 몇 가지 있습니다
ready-banner-warnings-message = 계속할 수 있지만, 먼저 ‘PC 검사’에 표시된 항목을 읽어 보세요.
ready-banner-ok-title = 이제 선택할 준비가 되었습니다
ready-banner-ok-message = 검사를 통과했고 설치 파일이 준비되었습니다.

ready-this-pc = PC 검사
ready-check-again = 다시 확인
ready-checks-passed = 검사 { $count }개 통과

package-title = 설치 파일
package-downloading = Fluxxwave { $version } 다운로드 중 · { $total } MB 중 { $received } MB
package-unpacking-progress = 압축 푸는 중 · 파일 { $total }개 중 { $done }개
package-unpacking = 압축 푸는 중
package-looking = 최신 Fluxxwave 버전을 확인하는 중입니다.
package-looking-bundled = 내장된 Fluxxwave 패키지를 준비하는 중입니다.
package-none = 설치 파일을 받으려면 Fluxxwave를 다운로드하세요. Fluxxwave 패키지(.apbx)가 이미 있으면 그 파일을 여세요.
package-release-failed = Fluxxwave가 최신 버전을 확인하지 못했습니다. 인터넷 연결을 확인한 다음 ‘최신 버전 다운로드’를 선택하거나, 저장해 둔 Fluxxwave 패키지(.apbx)를 여세요.
package-status-downloading = 다운로드 중
package-status-unpacking = 압축 푸는 중
package-status-failed = 파일을 준비하지 못함
package-status-ready = 준비됨
package-status-checking = 확인 중
package-status-preparing = 준비 중
package-status-missing = 다운로드되지 않음
package-progress = 설치 파일 진행률
package-download-again = 다시 다운로드
package-download-version = Fluxxwave { $version } 다운로드
package-download-newest = 최신 버전 다운로드
package-cancel-download = 다운로드 취소
package-open-file = 패키지 파일 열기
package-from-release = Fluxxwave { $version } 버전을 GitHub에서 다운로드했으며 설치할 준비가 되었습니다.
package-from-file = Fluxxwave { $version } 버전을 { $file } 파일에서 불러왔으며 설치할 준비가 되었습니다.
package-unpacked = Fluxxwave { $version } 버전을 설치할 준비가 되었습니다.
package-none-yet = 선택한 설치 파일이 없습니다
acquire-no-asset = Fluxxwave { $version } 버전에는 다운로드할 패키지 파일이 없습니다. 계속하려면 저장해 둔 Fluxxwave 패키지(.apbx)를 여세요.
acquire-unsupported = 이 앱은 Fluxxwave 0.6.0 이상을 설치할 수 있습니다. Fluxxwave { $version } 버전을 설치하려면 AME Wizard를 사용하세요.
acquire-incomplete = Fluxxwave { $version } 버전에는 이 앱이 설치하는 데 필요한 파일이 없습니다. 다시 다운로드하거나 다른 Fluxxwave 패키지(.apbx)를 여세요.
acquire-failed = 설치 파일을 준비하지 못했습니다. 다시 다운로드하거나 다른 Fluxxwave 패키지(.apbx)를 여세요. 세부 정보: { $error }
acquire-stalled = 다운로드가 응답하지 않습니다. 인터넷 연결을 확인한 다음 다시 다운로드하거나, 저장해 둔 Fluxxwave 패키지(.apbx)를 여세요.
acquire-failed-bundled = 내장된 Fluxxwave 패키지를 준비하지 못했습니다. ‘다시 시도’를 선택하세요. 세부 정보: { $error }

## 시스템 검사

check-administrator = 설치 권한
check-supported-build = Windows 호환성
check-pending-updates = Windows 업데이트
check-pending-reboot = 다시 시작 대기
check-third-party-antivirus = 다른 바이러스 백신 소프트웨어
check-internet = 인터넷 연결
check-power = 전원 공급
check-activation = Windows 정품 인증
check-a11y = { $title }: { $state }
check-state-checking = 확인 중
check-state-passed = 통과
check-state-warning = 확인 필요
check-state-failed-blocking = 설치 전에 조치 필요
check-state-failed = 확인 필요
check-state-unknown = 확인하지 못함
check-fix-windows-update = Windows 업데이트 열기
check-fix-network = 네트워크 설정 열기
check-fix-power = 전원 설정 열기
check-fix-activation = 정품 인증 설정 열기
check-fix-apps = 설치된 앱 열기
check-ack-updates = Windows 업데이트를 확인했으며 설치 대기 중인 업데이트가 없습니다

detail-admin-ok = Fluxxwave에 설치에 필요한 변경을 할 권한이 있습니다.
detail-admin-missing = Fluxxwave를 관리자 권한으로 다시 실행한 다음, Windows가 권한을 요청하면 ‘예’를 선택하세요.
detail-build-unsupported = 이 Fluxxwave 버전에 필요한 Windows 빌드는 { $builds }입니다. 이 PC의 빌드는 { $build }입니다. 계속하기 전에 지원되는 Windows 버전을 설치하세요.
detail-build-missing = 이 Fluxxwave 패키지에는 지원되는 Windows 빌드가 나와 있지 않습니다. LocalTest 빌드 대신 패키지의 전체 빌드를 사용하세요.
detail-updates-none = 설치 대기 중인 Windows 업데이트가 없습니다.
detail-updates-pending =
    { $count ->
        [1] 다음 업데이트가 대기 중입니다: { $titles }. Fluxxwave가 ‘Windows 및 Store 앱 업데이트’에서 설치합니다.
        [2] 다음 업데이트 2개가 대기 중입니다: { $titles }. Fluxxwave가 ‘Windows 및 Store 앱 업데이트’에서 설치합니다.
       *[other] { $titles } 등 업데이트 { $count }개가 대기 중입니다. Fluxxwave가 ‘Windows 및 Store 앱 업데이트’에서 설치합니다.
    }
detail-updates-unknown = Windows 업데이트를 확인하지 못했습니다. Windows 업데이트를 연 다음, 대기 중인 업데이트가 없으면 아래에서 확인해 주세요. ({ $error })
detail-reboot-none = 지금은 Windows를 다시 시작할 필요가 없습니다.
detail-reboot-pending = 이전 변경을 마치려면 Windows를 다시 시작해야 합니다. ‘업데이트 확인 및 설치’를 선택하면 Fluxxwave가 먼저 다시 시작하라고 안내합니다.
detail-reboot-pending-reasons = 이전 변경을 마치려면 Windows를 다시 시작해야 합니다({ $reasons }). ‘업데이트 확인 및 설치’를 선택하면 Fluxxwave가 먼저 다시 시작하라고 안내합니다.
detail-reboot-file-renames = 계속할 수 있습니다. Windows가 다음에 다시 시작할 때 교체하거나 제거할 파일이 있습니다({ $files }). Xbox Gaming Services 같은 일부 앱은 다시 시작할 때마다 이렇게 합니다.
detail-reboot-unknown = Windows를 다시 시작해야 하는지 확인하지 못했습니다. PC를 다시 시작한 다음 Fluxxwave를 다시 열어 다시 확인하세요. ({ $error })
detail-antivirus-none = 다른 바이러스 백신 소프트웨어가 감지되지 않았습니다.
detail-antivirus-found = Microsoft Defender 외의 바이러스 백신 앱은 설치를 차단할 수 있습니다. 다음 앱을 제거한 뒤 ‘다시 확인’을 선택하세요: { $products }
detail-antivirus-stale = Windows 보안에 아직 다음 항목이 표시되지만, 파일이 없어서 더 이상 설치되어 있지 않습니다: { $products }. Fluxxwave는 그대로 설치할 수 있습니다.
detail-antivirus-unknown = 다른 바이러스 백신 소프트웨어를 확인하지 못했습니다. ‘다시 확인’을 선택하세요. 계속 실패하면 PC를 다시 시작한 뒤 다시 확인하세요. ({ $error })
detail-internet-ok = 연결되어 있습니다. Fluxxwave가 소프트웨어를 다운로드하고 설치하는 동안 이 연결을 유지하세요.
detail-internet-missing = 인터넷에 연결한 다음 다시 확인하세요.
detail-power-mains = PC가 전원에 연결되어 있습니다. 설치가 끝날 때까지 연결해 두세요.
detail-power-battery = 설치하는 동안 꺼지지 않도록 PC를 전원에 연결하세요.
detail-power-unknown = Fluxxwave가 PC가 전원에 연결되어 있는지 확인하지 못했습니다. 노트북이라면 전원에 연결한 다음 ‘다시 확인’을 선택하세요. 계속 이렇게 되면 ‘보고서 보내기’를 선택하세요.
detail-activation-ok = Windows가 정품 인증되어 있습니다. Fluxxwave는 이 상태를 바꾸지 않습니다.
detail-activation-missing = Windows가 정품 인증되어 있지 않습니다. 계속할 수 있지만, Fluxxwave가 Windows를 정품 인증해 주지는 않습니다.
detail-activation-no-licence = Windows가 라이선스를 보고하지 않았습니다. 계속할 수 있으며, Fluxxwave는 정품 인증 상태를 바꾸지 않습니다.
detail-activation-unknown = Windows 정품 인증을 확인하지 못했습니다. 계속할 수 있으며, Fluxxwave는 정품 인증 상태를 바꾸지 않습니다. ({ $error })

## 2단계: 선택 사항

options-progress = 선택 { $number }/{ $total }
options-progress-extras = 선택 { $number }/{ $total }: 추가 옵션
options-change-later = Microsoft Defender, 프로세서 보호, 업데이트 설정은 나중에 바탕 화면의 Fluxxwave 폴더에서 바꿀 수 있습니다.
screen-defender-title = Microsoft Defender
screen-defender-question = Microsoft Defender를 유지하시겠습니까?
screen-mitigations-title = 프로세서 보호
screen-mitigations-question = Windows의 프로세서 보호를 유지하시겠습니까?
screen-updates-title = Windows 업데이트
screen-updates-question = Windows가 업데이트를 어떻게 설치할까요?
screen-browser-title = 브라우저
screen-power-title = 전원 및 보안
screen-apps-title = 앱
screen-optional-apps-title = 선택적 앱
screen-choose-one-title = 옵션 선택
screen-extras-title = 추가 옵션
screen-generic-question = { $title } 옵션을 선택하세요
learn-more-defender = Microsoft Defender에 대해 자세히 알아보기
learn-more-mitigations = 프로세서 보호에 대해 자세히 알아보기
learn-more-updates = Windows 업데이트에 대해 자세히 알아보기
learn-more-browser = 브라우저에 대해 자세히 알아보기
learn-more-power = 전원 및 보안에 대해 자세히 알아보기
learn-more-apps = 앱에 대해 자세히 알아보기
learn-more-eclean = eclean과 AtlasOS가 함께 작동하는 방식
learn-more-generic = 설정 가이드 읽기
consequence-defender-enable = Windows에 기본 제공되는 바이러스 백신을 유지해 바이러스와 기타 위협으로부터 PC를 보호합니다.
consequence-defender-disable = SmartScreen도 함께 제거됩니다. 다른 바이러스 백신 앱을 설치하기 전까지 PC에 바이러스 백신 보호가 없으며, 알 수 없는 앱이나 다운로드를 열 때 Windows가 경고하지 않습니다.
consequence-mitigations-default = 프로세서 결함과 앱의 버그를 악용하는 공격에 대한 Windows의 기본 보호를 유지합니다.
consequence-mitigations-disable = 제어 흐름 보호(CFG) 같은 앱용 Exploit Protection도 함께 꺼집니다. 보안이 약해집니다. 성능 차이는 프로세서에 따라 다릅니다.
consequence-auto-updates-disable = Windows 업데이트를 정기적으로 열어 업데이트를 설치하세요. 업데이트 알림은 계속 켜져 있습니다.
consequence-auto-updates-default = Windows가 보안 수정을 포함한 업데이트를 자동으로 설치합니다.

## 설치된 Fluxxwave를 업데이트하거나 다시 설치할 때의 2단계

update-path-update-title = Fluxxwave { $version }(으)로 어떻게 업데이트하시겠습니까?
update-path-reinstall-title = Fluxxwave { $version } 버전을 어떻게 다시 설치하시겠습니까?
update-path-keep = 내 선택 유지
update-path-keep-detail = Fluxxwave가 모든 선택 사항을 지금 이 PC의 상태 그대로 유지하고 아무것도 바꾸지 않습니다. 더 빠른 방법입니다.
update-path-choose = 다시 선택
update-path-choose-detail = 지금 이 PC의 설정 상태에서 시작해 모든 선택 사항을 다시 살펴봅니다. Fluxxwave는 새로 설치할 때처럼 각 선택을 적용합니다. 앱, 파일, 시작 메뉴, 작업 표시줄, 테마는 그대로 유지되며, Fluxxwave 폴더에서 바꾼 설정 중 이 선택 사항에 포함되지 않는 것도 그대로 유지됩니다.
update-path-now-title = 지금 이 PC의 선택 사항
update-path-unknown = Fluxxwave가 PC에서 확인할 수 없어서 직접 묻습니다
update-path-differs = Fluxxwave의 마지막 설치 기록이 다음 항목에서 이 PC와 일치하지 않습니다: { $choices }. 이 목록은 지금 PC의 상태를 보여 줍니다.
keep-choices-title = 선택 사항 유지 중
keep-choices-partial = Fluxxwave가 지금 이 PC의 상태를 유지합니다. 다음 항목은 PC에서 확인할 수 없으니 직접 선택하세요: { $missing }
choose-again-title = 다시 선택 중
choose-again-detail = 각 선택은 지금 이 PC의 설정 상태에서 시작합니다. 선택한 내용은 Fluxxwave가 설치 중에 적용합니다.
option-now = 지금 이 PC의 상태
change-defender-enable = Fluxxwave가 Microsoft Defender를 복원합니다. 다시 시작한 후 Windows 보안에서 보호를 켜세요.
change-mitigations-default = Fluxxwave가 프로세서 보호를 Windows 기본값대로 다시 켭니다. 다시 시작한 후 적용됩니다.
change-mitigations-all-on = 지금은 모든 프로세서 보호가 켜져 있습니다. 보호를 유지하면 모두 켜진 상태로 둡니다.
change-auto-updates-default = Fluxxwave가 Windows에서 업데이트를 다시 자동으로 설치하도록 합니다.
change-hibernation-on = Fluxxwave가 최대 절전 모드를 다시 켭니다.
change-power-saving-on = Fluxxwave가 절전 기능을 다시 켜고 이전 전원 관리 옵션으로 돌아갑니다. 이전 옵션이 없으면 ‘균형 조정’으로 설정합니다.
change-core-isolation-on = 이 PC의 정책이 제어하지 않는 한, Fluxxwave가 가상화 기반 보안(VBS)을 다시 켭니다. 다시 시작한 후 적용됩니다.
change-remove-snipping-tool = 이 PC의 모든 사용자에게서 캡처 도구를 제거합니다. Fluxxwave는 나중에 복원할 수 없지만, Microsoft Store에서 다시 설치할 수 있습니다.
fixed-uninstall-edge = Microsoft Edge는 이미 제거되었으며 Fluxxwave를 업데이트해도 복원되지 않습니다. 다시 설치하려면 Fluxxwave 폴더의 Install or Remove Edge를 사용하세요.
fixed-installed = { $app } 앱이 설치되어 있습니다. Fluxxwave는 앱을 제거하지 않습니다. 제거하려면 Windows 설정의 ‘설치된 앱’으로 이동하세요.
browser-also = { $installed } 브라우저는 그대로 설치된 상태로 두고, Fluxxwave가 { $browser } 브라우저도 설치합니다.

## Fluxxwave 패키지 텍스트
## 패키지에는 각 옵션의 영어 텍스트가 들어 있습니다. 아래 레이블과 설명은
## 패키지 텍스트가 i18n/playbook-source.ftl과 일치할 때에만 사용됩니다.

playbook-option-defender-enable = Microsoft Defender 유지(권장)
playbook-option-defender-disable = Microsoft Defender 제거
playbook-option-mitigations-default = 프로세서 보호 유지(권장)
playbook-option-mitigations-disable = 프로세서 보호 끄기
playbook-option-auto-updates-disable = 업데이트 직접 설치
playbook-option-auto-updates-default = 업데이트 자동 설치
playbook-option-disable-hibernation = 최대 절전 모드 끄기
playbook-option-disable-power-saving = 절전 기능 끄기
playbook-option-disable-core-isolation = 가상화 기반 보안(VBS) 끄기
playbook-option-remove-snipping-tool = 캡처 도구 제거
playbook-option-uninstall-edge = Microsoft Edge 제거
playbook-option-install-another-browser = 브라우저 설치
playbook-option-install-toolbox = Atlas Toolbox 설치
playbook-option-install-eclean = eclean 설치
playbook-option-browser-brave = Brave
playbook-option-browser-librewolf = LibreWolf
playbook-option-browser-firefox = Firefox
playbook-option-browser-chrome = Chrome
playbook-page-defender-enable-description = Microsoft Defender는 Windows에 기본 제공되는 바이러스 백신입니다. 위험을 이해하고 다른 바이러스 백신 앱을 사용할 계획일 때에만 제거하세요. 어느 쪽을 선택하든 Fluxxwave는 스마트 앱 컨트롤, 향상된 피싱 방지, 내 장치 찾기를 끕니다.
playbook-page-mitigations-default-description = 보안 완화라고도 하는 이 보호 기능은 Spectre, Meltdown 같은 프로세서 결함과 앱의 버그를 악용하는 공격을 막는 데 도움이 됩니다. Windows 기본값을 유지하는 것이 좋습니다.
playbook-page-auto-updates-disable-description = Windows 업데이트에는 보안 수정이 포함됩니다. Windows가 자동으로 설치하게 하거나 직접 설치할 수 있습니다. 어느 쪽이든 Fluxxwave는 Windows를 현재 버전으로 유지하며, 이 버전은 Microsoft가 지원을 종료할 때까지만 보안 수정을 받습니다. Fluxxwave는 Microsoft Store 앱의 자동 업데이트도 끄므로, 앱은 Microsoft Store에서 업데이트하세요.
playbook-page-browser-brave-description = 설치할 브라우저를 선택하세요. Fluxxwave는 브라우저 설정을 바꾸지 않습니다.

## 3단계: Windows 보안

security-banner-reading-title = Windows 보안 확인 중
security-banner-reading-message = Fluxxwave가 아래의 보호 스위치 4개를 확인하고 있습니다.
security-banner-off-title = 보호 스위치 4개가 모두 꺼져 있습니다
security-banner-absent-title = 이 PC에 Microsoft Defender가 설치되어 있지 않습니다
security-banner-absent-message = 이 단계에서는 끌 것이 없습니다. ‘계속’을 선택하세요.
security-banner-removed-title = Fluxxwave가 이 PC에서 Microsoft Defender를 제거했습니다
security-banner-restore-title = 이번 설치에서 Fluxxwave가 Microsoft Defender를 복원합니다
security-banner-restore-message = Defender가 아직 실행되고 있지 않아 이 단계에서는 끌 것이 없습니다. 다시 시작한 후 Windows 보안에서 보호를 켜세요. ‘계속’을 선택하세요.
security-banner-missing-title = Microsoft Defender가 없습니다
security-banner-missing-message = Fluxxwave가 제거한 것이 아니어서 복원할 수 없습니다. 계속할 수 있지만, 다른 바이러스 백신 앱을 설치하거나 Windows를 복구하기 전까지 PC에 바이러스 백신이 없습니다.
security-banner-off-message = ‘계속’을 선택해 설정을 검토하고 Fluxxwave를 설치하세요.

security-banner-on-title = Windows 보안에서 바이러스 백신 보호를 끄세요
security-banner-on-message = Microsoft Defender는 Fluxxwave가 하는 변경을 차단할 수 있습니다. ‘Windows 보안 열기’를 선택하고 아래에 나열된 스위치를 모두 끄세요. Microsoft Defender를 유지한다면 설치가 끝난 뒤 스위치를 다시 켜세요.
security-list-title = 바이러스 및 위협 방지 설정
security-switch-off = 끔
security-switch-on = 켬
security-switch-unreadable = 확인하지 못함
security-switch-reading = 확인 중
security-all-off = 모두 끔
security-a11y = { $title }: { $state }
security-count-still-on = { $count }개 아직 켜짐
security-count-unreadable = { $count }개 읽을 수 없음
security-count-join = { $a }, { $b }
security-unknown-title = Fluxxwave가 읽지 못한 스위치를 확인하세요
security-unknown-message = Windows 보안에서 스위치 4개가 모두 꺼져 있는지 확인한 다음 아래에서 확인해 주세요.
security-acknowledge = Windows 보안을 확인했으며 스위치 4개가 모두 꺼져 있습니다
security-unknown-unelevated-title = 보호를 확인하려면 Fluxxwave에 권한이 필요합니다
security-unknown-unelevated-message = Microsoft Defender 설정을 확인할 수 있도록 Fluxxwave를 관리자 권한으로 다시 실행하세요.
protection-tamper = 변조 보호
protection-tamper-why = Defender가 Fluxxwave의 보안 설정 변경을 차단하지 않도록 끄세요.
protection-realtime = 실시간 보호
protection-realtime-why = Defender가 검사 중에 Fluxxwave 설치 파일을 차단하지 않도록 끄세요.
protection-cloud = 클라우드 전송 보호
protection-cloud-why = 온라인 위협 검사가 Fluxxwave 설치 파일을 차단하지 않도록 끄세요.
protection-samples = 자동 샘플 전송
protection-samples-why = Defender가 Fluxxwave 파일을 분석용으로 Microsoft에 자동 전송하지 않도록 끄세요.

## 4단계: 설치

install-progress = 설치 진행률
install-percent = { $percent }%
outcome-succeeded-title = Fluxxwave가 설치되었습니다
outcome-lost-title = 설치 결과를 확인하지 못했습니다
outcome-failed-title = 설치가 완료되지 않았습니다
outcome-requirements = PC가 설치 요구 사항을 충족하지 못했습니다. 설치로 변경된 내용은 없습니다. ‘준비’ 단계로 돌아가 검사를 다시 실행하세요.
outcome-requirements-resumed = PC가 설치 요구 사항을 충족하지 못해 이번 시도가 중지되었습니다. 이전 시도에서 이미 변경이 시작되었습니다. ‘준비’ 단계로 돌아가 검사를 다시 실행하세요.
outcome-not-elevated = Fluxxwave에 관리자 권한이 없었습니다. 설치로 변경된 내용은 없습니다. Fluxxwave를 관리자 권한으로 다시 실행한 다음 다시 시도하세요.
outcome-not-elevated-resumed = Fluxxwave에 관리자 권한이 없어 이번 시도가 중지되었습니다. 이전 시도에서 이미 변경이 시작되었습니다. Fluxxwave를 관리자 권한으로 다시 실행한 다음 다시 시도하세요.
outcome-preparation-stale = Fluxxwave가 Windows와 Store 앱이 최신 상태인지 확인하지 못해, Windows를 변경하기 전에 설치가 중지되었습니다. ‘준비’ 단계로 돌아가 ‘업데이트 확인 및 설치’를 선택하세요.
outcome-preparation-stale-resumed = Fluxxwave가 Windows와 Store 앱이 최신 상태인지 확인하지 못해 이번 시도가 중지되었지만, 이전 시도에서 이미 변경이 시작되었습니다. ‘준비’ 단계로 돌아가 ‘업데이트 확인 및 설치’를 선택하세요.
outcome-failed-preflight = 아무것도 변경하기 전에 설치가 중지되었습니다. 다시 시도할 수 있습니다. 또 중지되면 ‘보고서 보내기’를 선택하세요.
outcome-failed-staging = 파일을 준비하는 중에, Windows를 변경하기 전에 설치가 중지되었습니다. 다시 시도할 수 있습니다. 또 중지되면 ‘보고서 보내기’를 선택하세요.
outcome-failed-applying = 일부 변경이 이미 적용되었을 수 있습니다. 다시 시도할 수 있습니다. 여기서 그만둔다면, 껐던 보호를 아직 사용할 수 있는 경우 Windows 보안에서 다시 켜세요.
outcome-failed-applying-defender-removed = 일부 변경이 이미 적용되었을 수 있습니다. 다시 시도할 수 있습니다. 설치가 또 중지되면 ‘보고서 보내기’를 선택하세요.
outcome-failed-resumed = 이번 시도는 일찍 중지되었지만, 이전 시도에서 이미 변경이 시작되었습니다. 다시 시도할 수 있습니다. 여기서 그만둔다면, 껐던 보호를 아직 사용할 수 있는 경우 Windows 보안에서 다시 켜세요.
outcome-failed-resumed-defender-removed = 이번 시도는 일찍 중지되었지만, 이전 시도에서 이미 변경이 시작되었습니다. 다시 시도할 수 있습니다. 설치가 또 중지되면 ‘보고서 보내기’를 선택하세요.
outcome-failed-repeated = 이번 시도는 이전 시도와 같은 오류로 중지되었으며, 일부 변경이 이미 적용되었을 수 있습니다. 아무것도 바꾸지 않고 다시 시도해도 해결되지 않을 가능성이 큽니다. Atlas 팀이 원인을 찾을 수 있도록 ‘보고서 보내기’를 선택하세요. 여기서 그만둔다면, 껐던 보호를 아직 사용할 수 있는 경우 Windows 보안에서 다시 켜세요.
outcome-failed-repeated-defender-removed = 이번 시도는 이전 시도와 같은 오류로 중지되었으며, 일부 변경이 이미 적용되었을 수 있습니다. 아무것도 바꾸지 않고 다시 시도해도 해결되지 않을 가능성이 큽니다. Atlas 팀이 원인을 찾을 수 있도록 ‘보고서 보내기’를 선택하세요.
outcome-failed-repeated-apps = Windows가 여전히 다음 앱을 제거하지 못해 이번 시도는 이전 시도와 같은 오류로 중지되었습니다: { $apps }. 일부 변경이 이미 적용되었을 수 있습니다. 아무것도 바꾸지 않고 다시 시도해도 해결되지 않을 가능성이 큽니다. Atlas 팀이 원인을 찾을 수 있도록 ‘보고서 보내기’를 선택하세요. 여기서 그만둔다면, 껐던 보호를 아직 사용할 수 있는 경우 Windows 보안에서 다시 켜세요.
outcome-failed-repeated-apps-defender-removed = Windows가 여전히 다음 앱을 제거하지 못해 이번 시도는 이전 시도와 같은 오류로 중지되었습니다: { $apps }. 일부 변경이 이미 적용되었을 수 있습니다. 아무것도 바꾸지 않고 다시 시도해도 해결되지 않을 가능성이 큽니다. Atlas 팀이 원인을 찾을 수 있도록 ‘보고서 보내기’를 선택하세요.
outcome-not-started = 설치 프로그램이 제시간에 시작되지 않았습니다. 설치로 변경된 내용은 없습니다. 다시 시도할 수 있습니다.
outcome-lost = 설치 프로그램이 결과를 보고하지 않고 중지되었으며, 일부 변경이 이미 적용되었을 수 있습니다. 다시 시도할 수 있습니다. 여기서 그만둔다면, 껐던 보호를 아직 사용할 수 있는 경우 Windows 보안에서 다시 켜세요.
outcome-lost-defender-removed = 설치 프로그램이 결과를 보고하지 않고 중지되었으며, 일부 변경이 이미 적용되었을 수 있습니다. 다시 시도할 수 있습니다. 또 중지되면 ‘보고서 보내기’를 선택하세요.
restart-now-message = Fluxxwave 설정을 마치기 위해 Windows를 다시 시작하는 중입니다.
restart-countdown = Fluxxwave 설정을 마치기 위해 { $seconds }초 후에 Windows를 다시 시작합니다. 먼저 작업을 저장하려면 ‘나중에 다시 시작’을 선택하세요.
restart-stopped = 자동 다시 시작이 취소되었습니다. 작업을 저장한 다음 PC를 다시 시작해 Fluxxwave 설정을 마치세요.
restart-needed = 작업을 저장한 다음 PC를 다시 시작해 Fluxxwave 설정을 마치세요.
restart-dont-now = 나중에 다시 시작
restart-now = 지금 다시 시작
restart-start-failed = Fluxxwave가 PC를 다시 시작하지 못했습니다. 작업을 저장한 다음 시작 메뉴에서 다시 시작하세요. 세부 정보: { $error }
preflight-title = 설치가 시작되지 않았습니다
preflight-invalid-options = Fluxxwave가 이 설정 선택 사항을 사용할 수 없습니다. ‘선택 사항’ 단계로 돌아가 검토한 다음 다시 시도하세요. 세부 정보: { $error }
preflight-changed = 이전 검사 이후 PC 상태가 바뀌었습니다. 다시 시도하기 전에 다음 문제를 해결하세요. { $problems }
preflight-problem = { $title }: { $detail }
preflight-security = Windows 보안: { $summary }.
preflight-busy = 다른 Fluxxwave 창에서 설치를 시작하고 있습니다. 잠시 기다린 다음 ‘Fluxxwave 설치’를 다시 선택하세요.
preflight-taken-over = 다른 Fluxxwave 창이 이 설정을 사용하고 있어서 설치가 시작되지 않았습니다. 그 창에서 계속하거나, ‘처음부터 다시’를 선택해 여기에서 다시 설정하세요.
preflight-record-unreadable = Fluxxwave가 이전 설치가 아직 실행 중인지 확인하지 못해 새 설치를 시작하지 않았습니다. ‘준비’ 단계로 돌아가 다음에 할 일을 확인하세요. 세부 정보: { $error }

preflight-refused = 설치 프로그램을 시작하지 못했습니다. 설치로 변경된 내용은 없습니다. ‘Fluxxwave 설치’를 선택해 다시 시도하세요. 계속 이렇게 되면 ‘보고서 보내기’를 선택하세요. 세부 정보: { $error }
preflight-refused-resumed = 설치 프로그램을 시작하지 못해 이번 시도가 중지되었습니다. 이전 시도에서 이미 변경이 시작되었습니다. ‘Fluxxwave 설치’를 선택해 다시 시도하세요. 계속 이렇게 되면 ‘보고서 보내기’를 선택하세요. 세부 정보: { $error }
go-to-ready = ‘준비’로 돌아가기
go-to-options = ‘선택 사항’으로 돌아가기
go-to-install = ‘설치’로 돌아가기
output-problem-title = 설치 진행 상황을 읽지 못했습니다
output-problem-message = Fluxxwave가 로그를 읽지 못했습니다. 설치가 중지되었다는 뜻은 아닙니다. PC를 켜 두고 로그 파일을 열어 보세요. 세부 정보: { $error }
install-elevate-title = Fluxxwave를 설치하려면 권한이 필요합니다
install-no-package-title = 먼저 설치 파일을 선택하세요
install-no-package-message = ‘준비’ 단계로 돌아가 Fluxxwave를 다운로드하거나 저장해 둔 Fluxxwave 패키지(.apbx)를 여세요.
install-no-package-bundled-message = ‘준비’ 단계로 돌아가 이 테스트 빌드에 내장된 Fluxxwave 패키지를 준비하세요.
install-not-ready-title = 먼저 ‘준비’ 단계를 마치세요
install-not-ready-message = Fluxxwave가 PC 검사와 Windows 업데이트를 마쳐야 설치할 수 있습니다.
install-security-title = 설치하기 전에 바이러스 백신 보호를 확인하세요
install-security-reading = 보호 스위치 4개를 다시 확인하는 중입니다.
install-security-message = { $summary }. 설치하기 전에 Windows 보안을 열어 스위치 4개가 모두 꺼져 있는지 확인하세요.
summary-try-again = 다시 시도하기 전에 검토하세요
summary-ready = Fluxxwave 설정 검토
summary-activation = 정품 인증
summary-activation-ok = 정품 인증됨. Fluxxwave는 이 상태를 바꾸지 않습니다.
summary-activation-missing = 정품 인증되지 않음. 계속할 수 있지만 Fluxxwave가 Windows를 정품 인증하지는 않습니다.
summary-activation-unknown = Fluxxwave는 Windows 정품 인증 상태를 바꾸지 않습니다.
summary-duration = 예상 시간
summary-duration-value = { $minutes }분, 그 후 다시 시작
summary-restart-checkbox = 설치 후 PC를 자동으로 다시 시작
summary-show-command = 설치 명령 표시
summary-hide-command = 설치 명령 숨기기
summary-copy-command-a11y = 설치 명령 복사
summary-command-unavailable = 설치 명령을 준비하지 못했습니다. 세부 정보: { $error }
summary-not-chosen = 아직 선택하지 않음
summary-change-a11y = { $title } 변경
summary-update-path = Fluxxwave 업데이트 방식
footer-still-checking = 설치 준비 중

footer-fix-items = 계속하려면 ‘PC 검사’의 항목을 해결하세요
footer-need-package = 계속하려면 Fluxxwave를 다운로드하거나 Fluxxwave 패키지를 여세요
footer-need-package-bundled = 계속하려면 내장된 Fluxxwave 패키지를 준비하세요
footer-reading-security = 보호 스위치 확인 중
footer-security-pending = 계속하려면 스위치 4개를 모두 끄세요
footer-security-confirm = 계속하려면 Fluxxwave가 읽지 못한 스위치를 확인하세요
footer-install-ready = 먼저 작업을 저장하고 앱을 닫으세요
button-install = Fluxxwave 설치
log-earlier-lines = 이전 줄 { $count }개는 로그 파일에 있습니다.
log-full-log-note = (전체 로그: { $path })

## 설치 중 화면

installing-checking-title = 마지막 확인
installing-checking-line = Fluxxwave가 변경하기 전에 PC를 검사하고 있습니다. 잠시 걸릴 수 있습니다.
installing-title = Fluxxwave 설치 중
installing-phase-preflight = PC를 검사하고 설치 파일을 준비하는 중입니다.
installing-phase-staging = 설치 파일을 준비하는 중입니다. PC를 켜 두세요.
installing-phase-applying = Fluxxwave가 Windows를 설정하는 동안 PC를 켜 두고 전원에 연결해 두세요.
installing-phase-done = 설치를 마무리하는 중입니다. PC를 켜 두세요.
installing-installed-title = Fluxxwave가 설치되었습니다
installing-started-just-now = { $time }에 시작됨, 1분 미만 전
installing-started-minutes = { $time }에 시작됨, { $minutes }분 전
installing-restart-auto = 설치가 끝나면 PC가 자동으로 다시 시작됩니다. 그 전에 다른 앱의 작업을 저장하세요.

## 다시 시작한 후의 ‘Fluxxwave가 설치되었습니다’ 창

installed-title-version = Fluxxwave { $version } 버전이 설치되었습니다
installed-title = Fluxxwave가 설치되었습니다
installed-ready = 모두 끝났습니다. 이제 Fluxxwave가 적용된 PC를 사용할 수 있습니다.
installed-security-message = Microsoft Defender를 유지했지만 일부 보호가 아직 꺼져 있습니다. Windows 보안을 열어 다음 항목이 켜져 있는지 확인하세요: { $switches }.
installed-defender-removed-title = Microsoft Defender가 제거되었습니다
installed-defender-removed-message = 다른 바이러스 백신 앱을 설치하기 전까지 PC에 바이러스 백신 보호가 없습니다. SmartScreen도 제거되어, 알 수 없는 앱이나 다운로드를 열 때 Windows가 경고하지 않습니다.
installed-defender-missing-message = Microsoft Defender를 유지하도록 선택했지만 Defender가 없으며, Fluxxwave가 제거한 것은 아닙니다. 다른 바이러스 백신 앱을 사용하지 않는다면 PC를 보호할 수 있도록 하나 설치하세요. Defender를 직접 제거한 것이 아니라면 ‘문제 신고’를 선택하세요.
installed-defender-not-restored-title = Microsoft Defender가 여전히 제거된 상태입니다
installed-defender-not-restored-message = Microsoft Defender를 유지하도록 선택했지만 이전 Fluxxwave 업데이트에서 복원되지 않아 PC에 바이러스 백신이 없습니다. 복원하려면 Fluxxwave를 업데이트하거나 다시 설치하면서 ‘다시 선택’을 선택하세요. 또는 바탕 화면의 Fluxxwave 폴더에서 7. Security > Defender를 열고 Toggle Defender를 실행한 뒤, Enable Windows Defender를 선택하고 PC를 다시 시작하세요.
choices-not-applied-title = 일부 선택 사항이 적용되지 않았습니다
choices-not-applied-message = Fluxxwave가 다음 항목에 대해 지금 이 PC의 상태를 기록했습니다: { $choices }. 이유는 설치 로그에 나와 있습니다.

## 설정

settings-title = 설정
settings-theme = 앱 테마
settings-theme-system = Windows와 동일
settings-theme-light = 라이트
settings-theme-dark = 다크
settings-theme-contrast-note = Fluxxwave가 Windows 대비 테마의 색을 사용하고 있습니다.
settings-theme-mica-note = 반투명 배경을 표시하려면 Windows와 같은 라이트 또는 다크 테마를 선택하세요.
settings-language = 언어
settings-language-system = Windows와 동일
settings-language-system-selected = { settings-language-system }({ $language })
settings-language-system-detail = ‘Windows와 동일’로 설정하면: { $language }

settings-language-preview-tag = 미리 보기
settings-language-preview-note = 미리 보기 번역은 아직 원어민의 검토를 받지 않았습니다.
preview-notice = { $language } 번역은 미리 보기이며 오류가 있을 수 있습니다.
preview-notice-switch = 영어로 전환
preview-notice-language = 언어 변경
settings-language-unavailable = 이 Fluxxwave 버전에서는 { $tag } 언어를 사용할 수 없습니다. 지금은 영어로 표시되며, 선택한 언어는 저장되어 있습니다.
settings-language-windows-unmatched = Fluxxwave가 아직 Windows 표시 언어({ $languages })를 지원하지 않습니다. 지금은 영어로 표시됩니다.
settings-language-windows-unavailable = Windows 표시 언어를 확인하지 못했습니다. 지금은 Fluxxwave가 영어를 사용합니다. 세부 정보: { $error }
settings-language-formats = 숫자, 날짜, 시간은 Windows의 사용지역 언어({ $locale })를 따릅니다.
settings-language-formats-numbers-only = 숫자는 Windows의 사용지역 언어({ $locale })를 따릅니다. Fluxxwave가 아직 오른쪽에서 왼쪽으로 쓰는 텍스트를 표시할 수 없어서 날짜와 시간은 표준 형식을 사용합니다.
settings-language-contribute = Atlas 번역 돕기
settings-restart-label = 설치 후 PC를 자동으로 다시 시작
settings-restart-locked = 설치가 끝난 후에 변경할 수 있습니다.
settings-restart-description = 이 설정을 켜면 설치가 끝난 뒤 1분 안에 PC가 다시 시작되며, 열려 있는 앱이 닫힙니다. 설치하기 전에 작업을 저장하세요.
settings-help = 도움말 및 피드백
settings-about = 정보
settings-about-app = Fluxxwave Manager
settings-about-licence = 라이선스
settings-about-licence-value = GPL-3.0, 무료 오픈 소스
settings-view-source = 소스 코드 보기
settings-view-licences = 라이선스 고지 보기
settings-licences-failed = 라이선스 고지를 열지 못했습니다. 다시 시도하거나 GitHub의 소스 코드에서 찾아보세요.
settings-open-data-folder = 앱 폴더 열기

## 선택적 옵션: 선택하기 전에 표시되는 설명

consequence-disable-hibernation = 최대 절전 모드에서 세션을 저장하는 데 쓰는 디스크 공간을 확보합니다. 최대 절전 모드와 빠른 시작을 사용할 수 없게 됩니다.
consequence-disable-power-saving = 절전 기능을 사용하지 않습니다. PC가 전력을 더 쓰고, 더 뜨거워지고, 배터리 사용 시간이 짧아질 수 있습니다.
consequence-disable-core-isolation = 메모리 무결성을 포함한 Windows의 추가 보안 계층을 끕니다. 보호가 약해지며, 이 기능이 필요한 앱이나 게임에 영향을 줄 수 있습니다.
consequence-remove-snipping-tool = 스크린샷과 화면 녹화를 위한 Windows 앱을 제거합니다.
consequence-uninstall-edge = Microsoft Edge 브라우저를 제거합니다. 다른 브라우저가 있는지 확인하거나 아래에서 하나를 선택하세요.
consequence-uninstall-edge-data = Microsoft Edge를 제거하고 이 PC의 Edge 즐겨찾기, 방문 기록, 저장된 암호를 삭제합니다. Microsoft 계정에 동기화되지 않은 항목은 사라집니다. 다른 브라우저가 있는지 확인하거나 아래에서 하나를 선택하세요.
caution-uninstall-edge = 이 PC의 Edge 즐겨찾기, 방문 기록, 저장된 암호를 삭제합니다.
consequence-install-another-browser = 아래에서 브라우저를 선택하면 Fluxxwave가 설치합니다.
consequence-install-toolbox = Fluxxwave 설정을 관리하는 데 도움이 되는 Atlas Toolbox를 추가합니다. Toolbox는 베타 버전이라 일부 기능이 완성되지 않았을 수 있습니다.
consequence-install-eclean = AtlasOS를 만든 팀의 유지 관리 도구로, 설정 후 PC를 깔끔하게 유지하는 데 씁니다. 불필요한 파일과 시작 앱을 검토할 수 있습니다. 계정과 인터넷 연결이 필요합니다.

home-intro = Fluxxwave는 백그라운드 활동과 방해 요소를 줄이도록 Windows를 조정합니다. 앱과 파일을 추가하기 전, 새로 설치한 Windows에 Fluxxwave를 설치하세요.

## ISO 만들기(베타)
iso-home-title = Windows 설치 미디어
iso-home-description = Fluxxwave가 포함된 Windows 설치 파일(ISO)을 만든 다음, 이 PC나 다른 PC에 Windows를 다시 설치할 때 사용하세요.
iso-open = Fluxxwave ISO 만들기
iso-title = Fluxxwave ISO 만들기
iso-beta = 베타
iso-beta-description = PC에 사용하기 전에 가상 머신에서 ISO를 먼저 시험해 보세요. Windows를 설치하기 전에 파일을 백업하세요.
iso-admin-description = Windows ISO를 읽고 새 ISO를 만들려면 Fluxxwave에 관리자 권한이 필요합니다. ‘관리자 권한으로 다시 실행’을 선택한 다음 Windows가 물으면 ‘예’를 선택하세요.
iso-files-description = Fluxxwave가 Windows를 다시 설치할 때 쓸 수 있도록 Windows 11 ISO에 Fluxxwave를 추가한 복사본을 만듭니다. Microsoft에서 다운로드한 Windows 11 ISO를 선택하고, 최신 Fluxxwave 패키지를 다운로드하거나 이미 가지고 있는 패키지(.apbx)를 선택한 다음, 새 ISO를 저장할 위치를 선택하세요.
iso-files-description-bundled = Fluxxwave가 Windows 11 ISO에 이 테스트 빌드에 내장된 Fluxxwave 패키지를 추가한 복사본을 만듭니다. Microsoft에서 다운로드한 Windows 11 ISO를 선택한 다음, 새 ISO를 저장할 위치를 선택하세요.
iso-source = Windows ISO
iso-source-download = Microsoft에서 Windows 11 다운로드
iso-package = Fluxxwave 패키지({ $minimum } 이상)
iso-output = 새 ISO 저장 위치
iso-no-file = 선택한 파일 없음
iso-browse = 찾아보기
iso-save-as = 다른 이름으로 저장
iso-pick-a11y = { $action }: { $field }
iso-inspect = 파일 확인
iso-mode-title = Fluxxwave를 어떻게 설정하시겠습니까?
iso-mode-interactive = 로그인 후 Fluxxwave 선택하기
iso-mode-interactive-description = 로그인하면 Fluxxwave가 열리고 업데이트, 선택 사항, Fluxxwave 설치를 차례로 안내합니다.
iso-mode-before = 지금 Fluxxwave 선택하기
iso-mode-before-description = Fluxxwave가 선택 사항을 ISO에 저장합니다. 로그인하면 Fluxxwave가 열려 업데이트를 안내하고, 그런 다음 저장한 선택 사항으로 Fluxxwave를 설치합니다.
iso-package-unsupported-title = 더 새로운 Fluxxwave 패키지를 선택하세요
iso-package-unsupported = 이 Fluxxwave 패키지는 Fluxxwave 선택 사항을 ISO에 저장할 수 없습니다. 더 새로운 패키지를 선택하거나 ‘로그인 후 Fluxxwave 선택하기’를 선택하세요.
iso-failed-package-unsupported = 이 Fluxxwave 패키지로는 ISO를 만들 수 없습니다. Fluxxwave { $minimum } 이상의 패키지를 선택하세요.
iso-package-unsupported-bundled-title = 이 ISO에는 Fluxxwave 선택 사항을 저장할 수 없습니다
iso-package-unsupported-bundled = 이 테스트 빌드에 내장된 Fluxxwave 패키지는 ISO 설정을 지원하지 않습니다. 대신 ‘로그인 후 Fluxxwave 선택하기’를 선택하세요.
iso-atlas-options = Fluxxwave 선택 사항
iso-review = ISO 검토
iso-review-description = ISO를 만들어도 이 PC에 아무것도 설치되지 않으며 원본 ISO도 바뀌지 않습니다. 만든 뒤에는 Fluxxwave가 새 ISO를 USB 드라이브에 넣어, 그 드라이브로 Windows를 다시 설치할 수 있게 해 줍니다.
iso-review-files = 파일
iso-step-windows = Windows 설치
iso-step-review = 검토
iso-review-package = Fluxxwave 패키지
iso-review-output = 새 ISO
iso-review-editions = 에디션
iso-architecture-x64 = x64
iso-architecture-arm64 = Arm64
size-megabytes = { $size } MB
size-gigabytes = { $size } GB
iso-review-account = 계정 이름
iso-review-target = 설치 대상
iso-review-drivers = 드라이버
iso-create = ISO 만들기
iso-progress-title = ISO를 만드는 중
iso-stage-inspect = Windows ISO 확인 중
iso-stage-copy = Windows 파일 복사 중
iso-stage-add-atlas = Fluxxwave 추가 중
iso-stage-master = ISO 파일 쓰는 중
iso-stage-verify = 새 ISO 확인 중
iso-stage-cleanup = 마무리 중
iso-stage-a11y = { $title }, { $status }
iso-stage-status-current = 진행 중
iso-stage-status-failed = 실패
iso-stage-status-not-started = 시작 전
iso-progress-description = Fluxxwave를 열어 두세요. 큰 이미지는 처리하는 데 시간이 걸릴 수 있습니다.
iso-cancel = 만들기 취소
iso-cancelling = 안전하게 취소할 수 있는 시점을 기다리는 중
iso-cancelled = ISO 만들기가 취소되었습니다
iso-cancelled-description = 원본 ISO는 바뀌지 않았습니다. 임시 파일이 남아 있다면 ‘로그 폴더 열기’를 선택해 위치를 확인하세요.
iso-complete = ISO가 준비되었습니다
iso-complete-description = ISO 만들기는 베타 기능이므로 먼저 가상 머신에서 ISO를 시험해 보세요. 그런 다음 ‘설치 USB 만들기’를 선택하고, Windows를 다시 설치하기 전에 파일을 백업하세요.
iso-open-folder = 폴더에서 보기
iso-failed = ISO 만들기를 마치지 못했습니다
iso-failed-description = 파일이 선택한 위치에 그대로 있는지, 저장할 드라이브가 연결되어 있는지 확인한 다음 ‘ISO 만들기’를 선택하세요. 계속 실패하면 ‘보고서 보내기’를 선택하세요.
iso-check-failed = 파일을 확인하지 못했습니다
iso-check-failed-description = ISO와 Fluxxwave 패키지가 선택한 위치에 그대로 있고 다운로드가 끝났는지 확인한 다음 ‘파일 확인’을 선택하세요. 계속 실패하면 ‘보고서 보내기’를 선택하세요.
iso-elevation-title = ISO를 만들려면 Fluxxwave에 권한이 필요합니다
iso-failed-output-exists = 같은 이름의 파일이 이미 있습니다. ‘다른 이름으로 저장’을 선택하고 새 파일 이름을 입력하세요.
iso-failed-destination = Fluxxwave가 그 위치에 새 ISO를 저장할 수 없습니다. ‘다른 이름으로 저장’을 선택하고 다운로드 폴더 같은 이 PC의 폴더를 고르세요. 네트워크 위치와, 많은 USB 드라이브처럼 FAT32 또는 exFAT로 포맷된 드라이브는 사용할 수 없습니다.
iso-failed-space = 대상 드라이브에 여유 공간이 부족합니다. 공간을 확보하거나 새 ISO를 다른 드라이브에 저장하세요.
iso-failed-edition = 이 ISO에는 지원되는 Windows 에디션이 없습니다. Windows Home과 LTSC는 지원되지 않습니다. Pro, Education, Enterprise 같은 다른 에디션이 포함된 ISO를 사용하세요.
iso-failed-customised = 이 ISO에는 autounattend.xml 같은 사용자 지정 설치 파일이 이미 들어 있습니다. Microsoft의 수정되지 않은 Windows ISO를 선택하세요.
iso-failed-windows-unsupported = 이 Windows 이미지는 Fluxxwave 패키지에서 지원되지 않습니다. 이 패키지가 지원하는 버전의, 수정되지 않은 64비트 Windows 11 ISO를 사용하세요.
iso-failed-network-architecture = 이 PC의 네트워크 드라이버가 이 ISO의 아키텍처와 맞지 않습니다. 뒤로 돌아가 ‘이 PC의 네트워크 드라이버 포함’을 끄거나, 이 PC에 맞는 ISO를 선택하세요.
iso-failed-unstaged = Fluxxwave가 작업 폴더를 준비하지 못해 아무것도 변경되지 않았습니다. 다시 시도하세요. 계속 실패하면 버그 신고에 쓸 수 있도록 ‘진단 내보내기’를 선택하세요.
iso-failed-package-changed = 파일을 확인한 뒤에 Fluxxwave 패키지가 바뀌었습니다. ‘파일’ 옆의 ‘변경’을 선택한 다음 ‘파일 확인’을 선택하세요.
iso-diagnostics = 로그 폴더 열기
iso-close-title = ISO 만들기가 아직 진행 중입니다
iso-close-message = 만들기나 취소가 끝날 때까지 이 창을 열어 두세요. 취소는 현재 작업이 안전하게 멈출 수 있는 지점에 이를 때까지 기다립니다.
iso-locked = Fluxxwave가 Windows 업데이트 작업을 하고 있습니다. 작업이 끝나면 여기에서 계속할 수 있습니다.
prepare-title = Windows 및 Store 앱 업데이트
prepare-description = 설치하기 전에 Fluxxwave가 Windows, Microsoft Store, Store 앱을 업데이트합니다. 메모장, 그림판, 터미널처럼 열려 있는 Store 앱은 업데이트되는 동안 닫힐 수 있으니 먼저 작업을 저장하세요. PC를 다시 시작해야 할 수도 있습니다.
prepare-complete = Fluxxwave가 설치할 Windows 또는 Store 업데이트를 더 찾지 못했습니다.
prepare-reboot-title = 계속하려면 PC를 다시 시작하세요
prepare-reboot = 업데이트 설치를 마치려면 PC를 다시 시작해야 합니다. Fluxxwave가 지금까지의 선택 사항을 저장하고, 로그인한 뒤 다시 열립니다.
prepare-reboot-reasons = 업데이트 설치를 마치려면 PC를 다시 시작해야 합니다({ $reasons }). Fluxxwave가 지금까지의 선택 사항을 저장하고, 로그인한 뒤 다시 열립니다.
prepare-reboot-save-work = 먼저 작업을 저장하고 앱을 닫으세요. ‘다시 시작하고 계속’을 선택하면 PC가 즉시 다시 시작됩니다.
prepare-restart-persists = PC를 다시 시작했지만 Windows가 여전히 다시 시작이 필요하다고 합니다({ $reasons }). 다시 시작해도 해결되지 않을 가능성이 큽니다. ‘Windows 업데이트 열기’를 선택해 대기 중인 작업을 마친 다음 ‘다시 시도’를 선택하세요. 대기 중인 작업이 없으면 ‘보고서 보내기’를 선택하세요.
prepare-reason-servicing = Windows 서비스 작업
prepare-reason-windows-update = Windows 업데이트
prepare-reason-file-renames = 교체 대기 중인 파일
prepare-reason-update-agent = Windows 업데이트 서비스
prepare-reason-unknown = 이유가 보고되지 않음
prepare-failed = ‘다시 시도’를 선택하세요. 또 실패하면 Windows 업데이트나 Microsoft Store에서 남은 업데이트를 마치거나 ‘보고서 보내기’를 선택하세요.
prepare-failed-title = 일부 업데이트를 마치지 못했습니다
prepare-ended-unconfirmed = 결과를 보고하기 전에 업데이트가 중지되어, Fluxxwave가 Windows와 Store 앱이 최신 상태인지 확인할 수 없습니다. ‘다시 시도’를 선택해 업데이트를 확인하세요.
prepare-unconfirmed-title = 업데이트 결과를 확인하지 못했습니다
prepare-affected-app = 해당 앱
prepare-app-in-use = { $app }을(를) 닫은 다음 다시 시도하세요. 열려 있는 동안에는 Windows가 업데이트할 수 없습니다. 창을 찾을 수 없으면 작업 관리자에서 닫으세요. 그래도 실패하면 PC를 다시 시작하고, { $app }을(를) 열기 전에 다시 시도하세요.
prepare-install-busy = 다른 설치 또는 필요한 다시 시작 때문에 업데이트가 차단되고 있습니다. 다른 설치가 끝나기를 기다리고, Windows가 요청하면 PC를 다시 시작한 다음 다시 시도하세요.
prepare-failed-component-store = Windows가 업데이트 설치를 막는 구성 요소 저장소 손상을 보고했으며, Fluxxwave가 복구하지 못했습니다. PC를 다시 시작한 다음 ‘다시 시도’를 선택하세요. 그래도 업데이트가 실패하면 파일을 백업하고 Fluxxwave ISO로 Windows를 다시 설치하세요.
prepare-failed-component-store-unrepairable = Windows가 복구할 수 없는 구성 요소 저장소 손상을 보고했으며, 이 때문에 업데이트를 설치할 수 없습니다. 파일을 백업한 다음 Fluxxwave ISO로 Windows를 다시 설치하세요.
prepare-failed-session-owner = Fluxxwave가 Windows에 로그인한 계정과 다른 계정으로 실행되고 있습니다. 관리자 계정으로 Windows에 로그인하고 그 계정에서 Fluxxwave를 연 다음 다시 시도하세요.
prepare-failed-store-missing = 이 계정에 Microsoft Store가 설정되어 있지 않습니다. Microsoft Store를 한 번 열거나, 없으면 다시 설치한 다음 다시 시도하세요.
prepare-failed-store-battery = 배터리를 절약하기 위해 Microsoft Store가 업데이트를 일시 중지했습니다. PC를 전원에 연결한 다음 다시 시도하세요.
prepare-failed-store-network = PC가 데이터 통신 연결이 아닌 네트워크에 연결될 때까지 Microsoft Store가 업데이트를 일시 중지했습니다. 데이터 통신 연결이 아닌 Wi-Fi나 이더넷에 연결한 다음 다시 시도하세요.
prepare-failed-store-timeout = Store 앱 업데이트가 끝나지 않았습니다. Microsoft Store에서 남은 다운로드를 마친 다음 다시 시도하세요.
prepare-failed-store-passes = Microsoft Store가 계속 새 업데이트를 제공했습니다. Microsoft Store에서 남은 업데이트를 마친 다음 다시 시도하세요.
prepare-failed-manual-updates = 일부 Windows 업데이트는 Windows 업데이트에서 직접 마쳐야 합니다. Windows 업데이트를 열어 마친 다음 다시 시도하세요.
prepare-failed-windows-passes = Windows 업데이트가 계속 새 업데이트를 제공했습니다. Windows 업데이트에서 남은 업데이트를 마친 다음 다시 시도하세요.
prepare-failed-source-linked = Fluxxwave Manager가 연결된 폴더에 있습니다. Fluxxwave를 닫고 Fluxxwave Manager를 이 PC의 로컬 폴더로 옮긴 다음, 그 폴더에서 여세요.
prepare-error-code = 오류 코드: { $code }
prepare-open-store = Microsoft Store 열기
prepare-cancelled = 업데이트가 중지되었습니다. 일부 업데이트는 이미 설치되었을 수 있습니다. 계속하기 전에 ‘업데이트 확인 및 설치’를 선택해 업데이트를 마치세요.
prepare-windows-search = Windows 업데이트 확인 중…
prepare-percent = 이 단계의 { $percent }%
prepare-count = 완료된 업데이트: { $total }개 중 { $completed }개
prepare-bytes = 약 { $total } MB 중 { $downloaded } MB 다운로드됨
prepare-elapsed = 경과 시간: { $minutes }분 { $seconds }초
prepare-progress-waiting = 업데이트 서비스를 기다리는 중입니다. 이 단계에서는 백분율을 표시할 수 없습니다.
prepare-progress-unchanged = { $minutes }분 동안 진행이 없습니다. 큰 업데이트는 시간이 걸릴 수 있으니 Fluxxwave를 열어 두세요. 자세한 내용은 ‘로그 폴더 열기’를 선택하세요.
prepare-report-delayed = Windows가 { $seconds }초 동안 진행 상황을 보고하지 않았습니다. 업데이트가 아직 진행 중일 수 있으니 Fluxxwave를 열어 두세요.
prepare-windows-download = Windows 업데이트 다운로드 중…
prepare-windows-install = Windows 업데이트 설치 중…
prepare-windows-repair = 업데이트 설치를 막을 수 있는 손상이 보고되어 먼저 Windows를 복구하는 중입니다. 30분 이상 걸릴 수 있습니다.
prepare-store-search = Microsoft Store 확인 중…
prepare-store-install = Microsoft Store와 앱 업데이트 중…
prepare-stop-description = Fluxxwave는 현재 단계가 끝난 뒤 중지합니다. 그때까지 Fluxxwave를 열어 두세요.
prepare-stop = 업데이트 중지
prepare-restart = 다시 시작하고 계속
prepare-start = 업데이트 확인 및 설치
prepare-blocked-source = 이 설치를 계속할 수 없어 사용할 수 없습니다. 페이지 맨 위의 메시지를 확인하세요.
prepare-needs-build-check = ‘PC 검사’에서 { $check } 항목을 통과하면 사용할 수 있습니다.
prepare-wait-for-package = 설치 파일이 준비되면 사용할 수 있습니다.
iso-username = 로컬 계정 이름
iso-account-description = Windows 설치에서 이 이름으로 로컬 계정을 만들기 때문에 Microsoft 계정이 필요하지 않습니다. 처음 로그인할 때 Windows가 암호를 정하라고 안내합니다.
iso-username-placeholder = 이름
iso-account-empty = 계속하려면 로컬 계정 이름을 입력하세요
iso-account-invalid = 20자 이내로 입력하세요. 처음과 끝에 공백을 넣을 수 없으며 다음 문자는 사용할 수 없습니다: " / \ [ ] : ; | = , + * ? < > @
iso-account-trailing-dot = 이름은 마침표로 끝날 수 없습니다.
iso-account-reserved = Windows가 기본 제공 계정에 사용하는 이름입니다. 다른 이름을 선택하세요.
iso-privacy-defaults = 이 ISO는 Windows 설치의 라이선스, Microsoft 계정, 개인 정보 화면을 건너뛰고, 선택적 데이터 공유와 맞춤형 제안을 끕니다.
prepare-drivers = 드라이버를 어떻게 설치할까요?
prepare-drivers-auto = Windows 업데이트로 드라이버 받기
prepare-drivers-auto-detail = Windows가 하드웨어에 맞는 드라이버를 찾습니다. 대부분의 PC에 권장됩니다.
prepare-drivers-manual = 드라이버 직접 설치
prepare-drivers-manual-detail = Windows 업데이트가 드라이버를 설치하지 않으므로, PC 또는 장치 제조업체에서 직접 받아야 합니다. 이미 설치된 드라이버는 유지됩니다.
prepare-drivers-description = 드라이버는 Windows가 그래픽, 소리, Wi-Fi 같은 하드웨어를 사용할 수 있게 해 줍니다. 업데이트한 뒤에 이 설정을 바꾸면 Fluxxwave가 업데이트를 다시 확인해야 합니다.
prepare-network-needed = 업데이트하려면 데이터 통신 연결이 아닌 인터넷 연결이 필요합니다. Wi-Fi나 이더넷에 연결한 다음 ‘다시 시도’를 선택하세요. Wi-Fi 네트워크가 보이지 않으면 먼저 네트워크 드라이버를 설치하세요.
prepare-network-limited = Windows가 이 네트워크에 인터넷 연결이 없다고 보고했습니다. 네트워크가 로그인을 요구하면 로그인하거나, 라우터와 DNS 또는 방화벽 필터링을 확인한 다음 다시 시도하세요.
prepare-network-metered = 이 연결은 데이터 통신 연결이거나 데이터 제한이 있습니다. 데이터 통신 연결이 아닌 네트워크에 연결하거나 네트워크 설정에서 ‘데이터 통신 연결’을 끈 다음 다시 시도하세요.
prepare-network-settings = 네트워크 설정 열기
iso-target-title = 어느 PC에 Windows를 다시 설치하시겠습니까?
iso-target-this = 이 PC
iso-target-this-description = Fluxxwave가 이 PC의 Wi-Fi 및 이더넷 드라이버를 ISO에 추가할 수 있어서, Windows를 다시 설치한 직후 바로 인터넷에 연결할 수 있습니다.
iso-target-other = 다른 PC
iso-copy-network = 이 PC의 네트워크 드라이버 포함
iso-network-detail = Windows 설치 중에 이 PC의 Wi-Fi 및 이더넷 드라이버를 다시 사용합니다. 다시 설치한 뒤에는 Wi-Fi에 다시 연결해야 합니다.
iso-network-source = 네트워크 드라이버 원본
iso-network-installed = 설치된 드라이버 사용
iso-network-updated = Windows 업데이트 먼저 확인
iso-network-updated-detail = Windows 업데이트가 제공하는 맞는 드라이버를 다운로드하고, 설치된 드라이버는 대체용으로 유지합니다. 데이터 통신 연결이 아닌 연결이 필요합니다.
iso-stage-network-drivers = 네트워크 드라이버 준비 중
iso-network-failed = 네트워크 드라이버를 준비하지 못했습니다. 진단 정보를 확인하거나, 뒤로 돌아가 네트워크 드라이버 옵션을 바꾸세요.
iso-network-inbox = 이 PC의 네트워크 어댑터는 Windows에 기본 포함된 드라이버를 사용하므로 ISO에 따로 넣을 필요가 없습니다.
iso-mode-desktop = 바탕 화면이 열리기 전에 설정 마치기
iso-mode-desktop-description = Fluxxwave가 선택 사항을 ISO에 저장합니다. 로그인하면 Windows 바탕 화면이 열리기 전에 Fluxxwave가 업데이트와 설치를 마칩니다.
desktop-setup-description = PC 설정을 마치세요. Fluxxwave 선택 사항은 저장되어 있으며, 필요하면 Windows로 돌아갈 수 있습니다.
desktop-setup-exit = Windows에서 계속

## Windows 설치 USB(베타)
usb-title = 설치 USB 만들기
usb-existing = 기존 ISO로 USB 만들기
usb-description = ISO를 USB 드라이브에 넣어 그 드라이브로 Windows를 다시 설치할 수 있습니다. Fluxxwave로 만든 ISO를 사용하면 Fluxxwave도 함께 설치됩니다.
usb-choose-iso = ISO 선택
usb-drive = USB 드라이브
usb-empty = USB 드라이브를 찾지 못했습니다. { $min } GB 이상의 USB 드라이브를 연결한 다음 ‘새로 고침’을 선택하세요. { $max } TB보다 큰 드라이브, 읽기 전용 드라이브, Windows가 실행 중인 드라이브는 표시되지 않습니다.
usb-refresh = 새로 고침
usb-scan-failed = 드라이브가 연결되어 있는지 확인한 다음 ‘새로 고침’을 선택하세요. 자세한 내용은 ‘로그 폴더 열기’를 선택하세요.
usb-scan-failed-title = USB 드라이브 목록을 가져오지 못했습니다
usb-drive-size = { $size } GB
usb-drive-serial = 일련 번호: { $serial }
usb-detail-separator = { " · " }
usb-review = USB 검토
usb-erase-title = 이 USB 드라이브를 지우시겠습니까?
usb-erase-description = { $drive }({ $size } GB)의 모든 파일과 파티션을 포함한 전체 내용이 영구적으로 지워집니다. 보관할 것은 먼저 다른 드라이브에 복사하세요. ISO는 그대로 유지됩니다.
usb-layout = Fluxxwave는 드라이브에서 최대 32 GB를 사용하고 나머지는 사용하지 않은 채로 둡니다. 이 USB 드라이브는 Windows 11에 필요한 UEFI 모드로 시작하는 PC에서 작동합니다.
usb-ack = 이 USB 드라이브의 모든 내용이 지워진다는 것을 이해했습니다
usb-write = 지우고 USB 만들기
usb-stage-prepare = 설치 파일 준비 중…
usb-stage-format = USB 포맷 중…
usb-stage-copy = 설치 파일 복사 중…
usb-stage-verify = USB 확인 중…
usb-working = Fluxxwave를 열어 두고 USB 드라이브를 연결해 두세요. 취소하면 완성되지 않은 USB 드라이브로는 Windows를 설치할 수 없습니다.
usb-failed-title = USB 만들기를 마치지 못했습니다
usb-complete-title = USB가 준비되었습니다
usb-close-title = USB 만들기가 아직 진행 중입니다
usb-failed = 드라이브가 이미 지워졌을 수 있어 아직 Windows 설치에 사용할 수 없습니다. 드라이브가 연결되어 있는지 확인한 다음 ‘USB 검토’를 선택해 다시 시도하세요. 드라이브를 다시 연결했다면 먼저 ‘새로 고침’을 선택하고 드라이브를 다시 선택하세요.
usb-failed-unchanged = USB 드라이브는 변경되지 않았습니다. ‘로그 폴더 열기’를 선택해 무엇이 실패했는지 확인한 다음 ‘USB 검토’를 선택해 다시 시도하세요.
usb-failed-iso = 이 ISO로는 설치 USB를 만들 수 없습니다. Fluxxwave로 만든 ISO나, Fluxxwave가 지원하는 버전의 Microsoft Windows 11 ISO를 선택하세요. USB 드라이브는 변경되지 않았습니다.
usb-failed-location = ISO 또는 Fluxxwave Manager가 이 USB 드라이브, 네트워크 위치 또는 연결된 폴더에 있습니다. 이 PC의 로컬 폴더로 옮긴 다음 다시 시도하세요. USB 드라이브는 변경되지 않았습니다.
usb-failed-space = Windows 드라이브에 설치 파일을 준비할 여유 공간이 부족합니다. 공간을 확보한 다음 다시 시도하세요. USB 드라이브는 변경되지 않았습니다.
usb-failed-fit = 설치 파일이 이 USB 드라이브에 들어가지 않습니다. 더 큰 드라이브를 사용해 다시 시도하세요. USB 드라이브는 변경되지 않았습니다.
usb-failed-drive-changed = 목록을 읽은 뒤에 USB 드라이브가 제거되었거나, 다시 연결되었거나, 교체되었습니다. ‘새로 고침’을 선택하고 드라이브를 다시 선택한 다음 ‘USB 검토’를 선택하세요. USB 드라이브는 변경되지 않았습니다.
usb-cancelled = 드라이브에 완성되지 않은 설치 파일이 있을 수 있습니다. Windows 설치에 사용하기 전에 다시 만드세요.
usb-cancelled-title = USB 만들기가 취소되었습니다
usb-cancelled-unchanged = USB 드라이브는 변경되지 않았습니다.
usb-complete = Fluxxwave가 모든 파일을 확인했습니다. ‘USB 꺼내기’를 선택한 다음, 다시 설치할 PC의 파일을 백업하세요. 드라이브를 그 PC에 꽂고 부팅 메뉴(보통 PC가 켜질 때 F12, F11 또는 Esc)를 사용해 USB 드라이브로 시작하세요.
usb-eject = USB 꺼내기
usb-ejected = 이제 USB 드라이브를 뽑아도 됩니다. 다시 설치할 PC의 파일을 백업하세요. 그런 다음 부팅 메뉴(보통 PC가 켜질 때 F12, F11 또는 Esc)를 사용해 그 PC를 USB 드라이브로 시작하세요.
usb-eject-failed = 드라이브를 사용 중인 파일이나 창을 닫은 다음 다시 시도하세요.
usb-eject-failed-title = USB를 꺼내지 못했습니다
ready-fresh-title = Fluxxwave는 새로 설치한 Windows용으로 만들어졌습니다
ready-fresh-description = 이 PC에서 Windows를 이미 사용해 왔다면, 계속하기 전에 파일을 백업하고 Windows를 다시 설치하세요. 지원되는 버전을 다시 설치할 수 있도록 먼저 ‘PC 검사’에서 ‘Windows 호환성’이 통과하는지 확인하세요.
detail-edition-unsupported = Windows 11 Home, LTSC, Server 에디션은 지원되지 않습니다. Pro, Education, Enterprise 같은 다른 에디션을 사용하세요. Windows가 에디션을 확인하지 못했다면 계속하기 전에 그 문제를 해결하세요.
install-source-title = 설치할 수 없습니다
install-source-unsupported = Fluxxwave { $source } 버전에서 { $target } 버전으로 바로 업데이트할 수 없습니다. 이 버전을 사용하려면 파일을 백업하고 Windows를 다시 설치하세요.
install-source-unsupported-any = Fluxxwave { $source } 버전은 바로 업데이트할 수 없습니다. 더 새로운 버전을 사용하려면 파일을 백업하고 Windows를 다시 설치하세요.
install-source-resume = Fluxxwave { $target } 설치가 완료되지 않았으며, Fluxxwave { $target } 패키지로만 마칠 수 있습니다. ‘패키지 파일 열기’를 선택하고 해당 Fluxxwave 패키지(.apbx)를 선택하세요. Fluxxwave가 다운로드한 패키지라면 { $folder } 폴더에 있습니다.
install-source-resume-bundled = Fluxxwave { $target } 설치가 완료되지 않았습니다. 이 테스트 빌드는 내장된 Fluxxwave 패키지만 설치할 수 있으니, Fluxxwave Manager 릴리스 빌드에서 Fluxxwave { $target } 패키지로 그 설치를 마치세요.
install-source-unknown = Fluxxwave가 이 PC에 이미 무엇이 설치되어 있는지 확인하지 못해 지금은 아무것도 설치하지 않습니다. Atlas 팀이 도울 수 있도록 ‘보고서 보내기’를 선택하세요.
install-source-details = { $problem } 세부 정보: { $error }
iso-edition-selection = 지원되는 에디션만 포함됩니다. Windows 설치 중에 Windows 라이선스가 있는 에디션을 선택하세요.
detail-windows-preview = Insider 빌드는 지원되지 않습니다. Windows 11 정식 릴리스를 사용하세요.
detail-windows-release-unknown = Fluxxwave가 이 Windows 빌드가 정식 릴리스인지 확인하지 못했습니다. 인터넷에 연결한 다음 다시 확인하세요.
detail-windows-release-unlisted = 빌드 { $build }은(는) Microsoft의 Windows 11 정식 릴리스 목록에 없어서 Fluxxwave가 아직 설치할 수 없습니다. Release Preview를 비롯한 미리 보기 빌드는 지원되지 않습니다. Microsoft가 이 빌드를 목록에 올리면 ‘다시 확인’을 선택하세요.
iso-release-unknown = Fluxxwave가 이 ISO가 Fluxxwave 패키지에서 지원하는 Windows 11 정식 릴리스인지 확인하지 못했습니다. 인터넷에 연결한 다음 ‘파일 확인’을 다시 선택하세요. 그래도 실패하면 Microsoft에서 ISO를 다시 다운로드하세요.
iso-release-unlisted = 이 ISO의 Windows 11 빌드는 Microsoft의 정식 릴리스 목록에 없습니다. Release Preview를 비롯한 미리 보기 빌드는 지원되지 않습니다. Microsoft에서 ISO를 다운로드하거나, Microsoft가 이 빌드를 목록에 올리면 ‘파일 확인’을 다시 선택하세요.
prepare-previous-worker = 이전에 시작한 업데이트가 아직 진행 중입니다. Fluxxwave가 끝나기를 기다리며, 그 뒤에 업데이트를 다시 확인할 수 있습니다.

ready-used-windows-title = 이 PC의 Windows는 이미 사용한 것으로 보입니다
ready-used-windows-description = 이 PC의 Windows는 설치한 지 일주일 이상 되었거나 이미 앱이 여러 개 있습니다. 여기에 Fluxxwave를 설치하는 것은 지원되지 않으며 강력히 권장하지 않습니다. 이미 있는 앱과 설정이 예상대로 작동하지 않을 수 있고, Fluxxwave가 OneDrive를 제거하기 때문에 OneDrive의 파일이 동기화를 멈추고 바탕 화면, 문서, 사진 폴더가 비어 보일 수 있습니다. 먼저 파일을 백업하고 Windows를 다시 설치하거나, 위험을 감수할 때에만 계속하세요.
ready-used-windows-dismiss = 그래도 계속

prepare-resumed = PC가 다시 시작되었고, Fluxxwave가 지금까지의 선택 사항을 복원했습니다. Fluxxwave를 설치하기 전에 ‘업데이트 계속’을 선택해 업데이트를 마치세요.
prepare-continue = 업데이트 계속
prepare-saving-restart = 선택 사항을 저장하고, Windows가 다시 시작된 뒤 Fluxxwave가 다시 열리도록 준비하는 중…
prepare-restart-save-failed = 선택 사항을 저장하지 못했습니다. 다시 시작하기 전에 다시 시도하세요.
prepare-restart-registration-failed = 선택 사항은 저장되었지만, 다시 시작한 뒤 Fluxxwave가 다시 열리도록 준비하지 못했습니다. 다시 시도하거나, PC를 직접 다시 시작하고 로그인한 뒤 Fluxxwave를 여세요.
prepare-restart-source-linked = 선택 사항은 저장되었지만, Fluxxwave Manager가 연결된 폴더에 있는 동안에는 다시 시작한 뒤 다시 열리도록 준비할 수 없습니다. Fluxxwave를 닫고 Fluxxwave Manager를 이 PC의 로컬 폴더로 옮기세요. 그런 다음 그 폴더에서 열거나, PC를 직접 다시 시작하고 로그인한 뒤 그 폴더에서 여세요.
prepare-restart-failed = Fluxxwave가 PC를 다시 시작하지 못했습니다. 다시 시도하거나 시작 메뉴에서 다시 시작하세요. 선택 사항은 저장되어 있으며, 로그인하면 Fluxxwave가 다시 열립니다.
diagnostics-export = 진단 내보내기
diagnostics-exporting = 진단 정보 수집 중…
diagnostics-privacy = Atlas 팀에 비공개로 보고서를 보내거나, 도움을 요청할 때 공유할 진단 ZIP을 내보낼 수 있습니다. Fluxxwave가 ZIP에서 사용자 이름, PC 이름, 이메일 주소를 제거합니다.
diagnostics-saved = 진단 ZIP을 만들었습니다
diagnostics-failed-title = 진단을 내보내지 못했습니다
diagnostics-failed = PC에 디스크 여유 공간이 있는지 확인한 다음 다시 시도하세요. 세부 정보: { $error }

## 테스트 빌드(embedded-playbook 기능)

rc-banner = Fluxxwave { $release } 테스트 빌드입니다. 이 앱은 내장된 Fluxxwave 패키지만 설치합니다.
home-status-bundled = 테스트 빌드 { $release }
package-bundled = 이 테스트 빌드에 내장된 Fluxxwave { $version } 버전을 설치할 준비가 되었습니다.
rc-about-release = 테스트 빌드
rc-about-commit = 소스 커밋
rc-about-package = 내장된 Fluxxwave 패키지(SHA-256)
iso-package-bundled = 이 테스트 빌드에 내장된 Fluxxwave 패키지

check-user-account = 사용자 계정
detail-user-account-ok = UAC가 켜져 있으며 계정이 설치할 준비가 되었습니다.
detail-user-account-not-ready = 사용자 계정 컨트롤(UAC)을 켜고 PC를 다시 시작한 다음 다시 시도하세요. 기본 제공 Administrator 계정을 사용 중이라면 다른 관리자 계정으로 로그인하세요.
detail-user-account-work-or-school = 회사 또는 학교(Microsoft Entra ID) 계정에서는 Fluxxwave를 설치할 수 없습니다. 로컬 계정이나 Microsoft 계정으로 로그인한 다음 다시 시도하세요.
detail-user-account-unknown = Fluxxwave가 사용자 계정을 확인하지 못했습니다. PC를 다시 시작한 다음 Fluxxwave를 다시 열어 다시 확인하세요. 계속 이렇게 되면 ‘보고서 보내기’를 선택하세요. Windows가 보고한 내용: { $error }

footer-prepare-required = 계속하려면 Windows와 Store 앱 업데이트를 마치세요
footer-prepare-stopping = 현재 단계가 끝난 뒤 업데이트를 중지합니다…
resume-choices-title = 이전 설치를 이어서 진행합니다
resume-choices-detail = 그 설치를 마치기 위해 Fluxxwave가 지난번에 선택한 내용을 복원했습니다. 설치가 끝날 때까지 ‘선택 사항’에서 바꿀 수 없습니다.

## 자발적 보고서
report-title = 보고서 보내기
report-received = 보고서를 받았습니다
report-reference = 이 보고서에 관해 Atlas 팀에 문의할 때를 대비해 이 참조 번호를 보관하세요. 연락처를 남겼다면 팀이 답장에 사용할 수 있지만, 답장이 보장되지는 않습니다.
report-copy-reference = 보고서 참조 번호 복사
report-another = 다른 보고서 보내기
report-kind = 무엇을 보내시겠습니까?
report-kind-issue = 문제
report-kind-suggestion = 제안
report-intro = 어떤 일이 있었는지, 또는 무엇을 바꾸고 싶은지 설명해 주세요({ $min }–{ $max }자). 메시지에 암호를 포함하지 마세요.
report-message = 메시지
report-message-placeholder = 저는 … 하려고 했습니다
report-contact = 연락처(선택 사항)
report-contact-placeholder = 이메일 또는 Discord 사용자 이름
report-attach = 진단 포함
report-attach-description = 원인을 찾는 데 도움이 되는 로그와 시스템 정보입니다. Fluxxwave가 사용자 이름, PC 이름, 이메일 주소, 알려진 암호나 키를 제거합니다. 오류 세부 정보, 하드웨어 모델, 앱 이름은 그대로 유지됩니다. 보내기 전에 ZIP을 검토할 수 있습니다.
report-prepare = 진단 준비
report-review = ZIP 검토
report-prepare-failed-title = 진단을 준비하지 못했습니다
report-prepare-failed = 진단을 다시 준비하거나, ‘진단 포함’을 끄고 진단 없이 보고서를 보내세요. 세부 정보: { $error }
report-privacy = 보고서는 reports.atlasos.net의 Atlas 팀에 비공개로 전달됩니다. 메시지와 연락처는 작성한 그대로 전송됩니다. 팀은 조사를 위해 다른 회사의 AI 서비스를 사용할 수 있습니다. 이 서비스에는 메시지와 진단 정보가 전달되지만 연락처는 전달되지 않습니다. 보고서는 90일 후 삭제되며, 서버 보안 로그에 IP 주소가 기록될 수 있습니다.
report-website = 개인 정보 및 보고서 웹사이트
report-consent = 이 보고서와 포함된 진단 정보를 Atlas 팀에 보내는 데 동의합니다
report-failed = 메시지는 그대로 남아 있습니다. 인터넷 연결을 확인한 다음 ‘다시 시도’를 선택하거나, 보고서 웹사이트에서 보고서를 보내세요.
report-failed-busy = 보고서 서비스가 혼잡합니다. 메시지는 그대로 남아 있습니다. 나중에 다시 시도하세요.
report-failed-outdated = 이 버전의 Fluxxwave Manager에서는 더 이상 보고서를 보낼 수 없습니다. 메시지는 그대로 남아 있으니 복사해서 보고서 웹사이트에 붙여 넣으세요. 진단을 포함했다면 ‘ZIP 검토’를 선택해 ZIP도 그곳에 첨부하세요.
report-failed-diagnostics = 준비한 진단 정보를 보낼 수 없습니다. 메시지는 그대로 남아 있습니다. 진단을 다시 준비하거나 ‘진단 포함’을 끄세요.
report-failed-website = 보고서 웹사이트 열기
report-sending = 보내는 중…
report-send = 보고서 전송

report-validation-message = { $min }–{ $max }자로 입력하세요.

report-validation-contact = 연락처는 { $max }자 이내로 입력하세요.

report-validation-consent = 이 보고서를 보내는 데 동의하는지 확인하세요.

report-failed-title = 보고서를 보내지 못했습니다

## Windows 버전 업데이트
## Fluxxwave는 설치하기 전에 Windows 업데이트를 통해 Windows를 더 새로운 릴리스로 바꿉니다.
## $release는 대상 릴리스(26H2), $current는 PC의 현재 릴리스(24H2)입니다.

home-plan-intro = 이 업데이트는 두 부분으로 이루어집니다. 파일과 앱은 그대로 유지됩니다. Windows를 업데이트하면서 Fluxxwave의 변경 사항이 되돌려지면 Fluxxwave가 다시 적용합니다.
home-plan-windows-title = Windows 11 버전 { $release }
home-plan-windows-detail = Fluxxwave가 Windows 업데이트를 통해 설치합니다. 마치려면 PC가 다시 시작됩니다.
home-plan-windows-optional = 권장. Fluxxwave가 Windows 업데이트를 통해 설치합니다. 마치려면 PC가 다시 시작됩니다.
home-plan-atlas-title = Fluxxwave { $version }
home-plan-atlas-detail = Fluxxwave가 파일을 업데이트하고 선택한 내용을 유지합니다. 마지막에 PC가 다시 시작됩니다.
home-end-of-updates-title = Windows 11 버전 { $current }의 보안 업데이트가 { $date }에 종료됩니다
home-end-of-updates-past-title = Windows 11 버전 { $current }은(는) 더 이상 보안 업데이트를 받지 않습니다
home-end-of-updates-message = Fluxxwave { $version }(으)로 업데이트하면 이 PC도 Windows 11 버전 { $release }(으)로 바뀌며, 이 버전은 { $until }까지 보안 업데이트를 받습니다.

install-windows-edition = Fluxxwave { $version } 버전은 Windows 11 Pro, Enterprise, Education에서 작동합니다. 이 PC에는 { $product } 에디션이 설치되어 있어 Fluxxwave를 설치할 수 없습니다.
install-windows-edition-ending = Fluxxwave { $version } 버전은 Windows 11 Pro, Enterprise, Education에서 작동합니다. 이 PC에는 { $product } 에디션이 설치되어 있어 Fluxxwave를 설치할 수 없습니다. Windows 11 버전 { $current }의 보안 업데이트는 { $date }에 종료됩니다. Windows 업데이트로 이 PC를 더 새로운 버전으로 바꿀 수 있습니다.
install-windows-no-path = Fluxxwave { $version } 버전에는 Windows 11 버전 { $releases }이(가) 필요한데, Windows 업데이트로는 이 PC의 현재 Windows에서 그 버전으로 바꿀 수 없습니다. Fluxxwave { $version } 버전을 사용하려면 파일을 백업하고 Fluxxwave ISO로 Windows를 다시 설치하세요.

home-update-access-title = Fluxxwave 업데이트를 위해 Windows 업데이트 설정이 변경되어 있습니다
home-update-access-not-offered = Fluxxwave가 이 PC를 Windows 11 버전 { $release }(으)로 바꾸기 위해 Windows 업데이트를 켰지만, Windows 업데이트가 아직 그 버전을 제공하지 않았습니다. ‘다시 확인’ 또는 ‘설정 되돌리기’를 선택하세요.
home-update-access-before = Fluxxwave가 이 PC를 Windows 11 버전 { $release }(으)로 바꾸기 위해 Windows 업데이트를 켰으며, 아직 끝나지 않았습니다. 업데이트를 계속하거나 ‘설정 되돌리기’를 선택하세요.
home-update-access-after = 이 PC는 Windows 11 버전 { $release }입니다. Fluxxwave 설치를 마치거나 ‘설정 되돌리기’를 선택하세요.
home-update-access-plain = Fluxxwave가 업데이트를 설치하기 위해 Windows 업데이트를 켰으며, 아직 끝나지 않았습니다. 업데이트를 계속하거나 ‘설정 되돌리기’를 선택하세요.
home-update-access-unreadable = Fluxxwave가 변경한 Windows 업데이트 설정의 기록을 읽을 수 없어서 아무것도 변경하거나 되돌리지 않습니다. Atlas 팀이 도울 수 있도록 ‘보고서 보내기’를 선택하세요.
home-update-access-failed = Fluxxwave가 설정을 되돌리지 못했습니다. 다시 시도하거나 ‘보고서 보내기’를 선택하세요. 세부 정보: { $error }
home-update-access-install-active = 먼저 Fluxxwave 설치를 마치세요. 설치의 마지막 단계에서 이 설정을 되돌립니다.
home-continue-update = 업데이트 계속
home-put-back = 설정 되돌리기
home-putting-back = 설정을 되돌리는 중…

windows-card-title = Windows 11 버전 { $release }
windows-card-required = Fluxxwave { $version } 버전에는 더 새로운 Windows 버전이 필요합니다. 아래에서 Fluxxwave가 Windows를 업데이트할 때 Windows 업데이트를 통해 Windows 11 버전 { $release }도 함께 설치합니다.
windows-card-question = 이 PC에서 어떤 Windows 버전을 사용할까요?
windows-choice-move = Windows 11 버전 { $release }(으)로 업데이트
windows-choice-move-detail = 권장. { $date }까지 보안 업데이트를 받습니다. 다시 시작이 한 번 더 필요합니다.
windows-choice-keep = Windows 11 버전 { $current } 유지
windows-choice-keep-detail = PC가 이 버전에 머무릅니다. Windows 업데이트가 더 새로운 버전으로 바꾸지 않으므로, 나중에 바꾸려면 Fluxxwave Manager에서 다시 업데이트해야 합니다.
windows-card-facts = 바뀌는 내용
windows-fact-keep = 파일과 앱은 그대로 유지됩니다. 업데이트로 Fluxxwave의 변경 사항이 되돌려지면 Fluxxwave가 설치할 때 다시 적용합니다.
windows-fact-restart = 마치려면 PC가 적어도 한 번 더 다시 시작됩니다.
transition-offer-expectation = Windows 업데이트는 보통 몇 분 안에 제공하지만 최대 2시간이 걸릴 수 있습니다. Fluxxwave가 기다리면서 대신 확인합니다.
windows-fact-stays = 그 뒤로 Windows는 버전 { $release }에 머무르며 스스로 더 새로운 버전으로 바뀌지 않습니다.
windows-fact-removed = 버전 { $release }에는 Windows PowerShell 2.0과 WMIC 도구가 포함되어 있지 않습니다.
windows-card-undo = 나중에 되돌리려면 Windows 업데이트의 ‘업데이트 기록’에서 업데이트를 제거하세요. Windows가 업데이트하면서 스스로 다시 설치되었다면, 10일 안에 시스템 설정의 ‘복구’에서 ‘되돌리기’를 선택하세요. Fluxxwave { $version } 버전은 버전 { $current }을(를) 지원하지 않으므로, Fluxxwave { $version } 버전을 설치한 뒤에는 되돌리지 마세요.
windows-card-undo-optional = 나중에 되돌리려면 Windows 업데이트의 ‘업데이트 기록’에서 업데이트를 제거하세요. Windows가 업데이트하면서 스스로 다시 설치되었다면, 10일 안에 시스템 설정의 ‘복구’에서 ‘되돌리기’를 선택하세요.
windows-terms = Windows 11 버전 { $release }의 Microsoft 소프트웨어 사용 조건에 동의합니다
windows-terms-link = 사용 조건 읽기
windows-card-locked = 버전 { $current }을(를) 유지하려면 ‘취소’를 선택한 다음 ‘업데이트 중지’를 선택하세요.

prepare-description-transition = 설치하기 전에 Fluxxwave가 Windows에서 대기 중인 업데이트를 설치하고, 이어서 Windows 11 버전 { $release }을(를) 설치한 다음, Microsoft Store와 Store 앱을 업데이트합니다. 열려 있는 Store 앱은 업데이트되는 동안 닫힐 수 있으니 먼저 작업을 저장하세요. PC가 적어도 한 번 다시 시작됩니다.
prepare-start-transition = Windows를 버전 { $release }(으)로 업데이트
prepare-needs-terms = ‘Windows 11 버전 { $release }’에서 사용 조건에 동의하면 사용할 수 있습니다.
ready-banner-not-offered-message = 지금 할 수 있는 일은 ‘Windows 및 Store 앱 업데이트’에서 확인하세요.
ready-banner-transition-failed-message = 다음에 할 일은 ‘Windows 및 Store 앱 업데이트’에서 확인하세요.
ready-banner-terms-title = 계속하려면 사용 조건에 동의하세요
ready-banner-terms-message = 사용 조건은 이 페이지 아래쪽의 ‘Windows 11 버전 { $release }’에 있습니다. 동의한 다음 ‘Windows를 버전 { $release }(으)로 업데이트’를 선택하세요.

access-notice-title = Fluxxwave가 당분간 Windows 업데이트를 켭니다
access-off = 이 PC에서는 Windows 업데이트가 꺼져 있습니다. Fluxxwave가 Windows를 업데이트하는 동안 다시 켭니다.
access-paused = 이 PC에서는 Windows 업데이트가 일시 중지되어 있습니다. Fluxxwave가 Windows를 업데이트하는 동안 일시 중지를 해제합니다.
access-delayed = 이 PC에서는 월별 업데이트가 연기되어 있습니다. Fluxxwave가 Windows를 업데이트하는 동안 연기를 해제합니다.
access-back-chosen = Fluxxwave { $version } 설치가 끝나면 이 설정은 선택한 대로 돌아갑니다.
access-back = Fluxxwave { $version } 설치가 끝나면 이 설정은 원래대로 돌아갑니다.
access-back-stop = 그 전에 중지하면 Fluxxwave가 되돌립니다.

prepare-reboot-transition = Windows 11 버전 { $release }이(가) 설치되었습니다. 설치를 마치려면 ‘다시 시작하고 계속’을 선택하세요. 로그인하면 Fluxxwave가 다시 열립니다.
prepare-reboot-commit = 버전 { $release } 설치를 마치려면 Windows를 한 번 더 다시 시작해야 합니다. 로그인하면 Fluxxwave가 다시 열립니다.
prepare-restart-commit-failed = Windows가 다시 시작할 때 버전 { $release } 설치를 마칠 준비를 하지 못해 PC가 다시 시작되지 않았습니다. ‘다시 시작하고 계속’을 선택해 다시 시도하세요.
prepare-reason-feature-update = 새 Windows 버전
prepare-reason-feature-commit = 새 Windows 버전 마무리
prepare-resumed-transition = PC가 다시 시작되었습니다. Fluxxwave가 Windows 11 버전 { $release } 설치가 끝났는지 확인하고 남은 업데이트를 설치할 수 있도록 ‘업데이트 계속’을 선택하세요.
prepare-waiting-offer = Windows 업데이트가 Windows 11 버전 { $release }을(를) 제공하기를 기다리는 중입니다. 보통 몇 분이 걸리지만 최대 2시간이 걸릴 수 있습니다. PC는 계속 사용해도 되며, Fluxxwave는 열어 두세요.
prepare-resumed-before-move = 업데이트 설치를 마치기 위해 PC가 다시 시작되었습니다. Fluxxwave가 남은 업데이트를 설치하고 이어서 Windows 11 버전 { $release }을(를) 설치할 수 있도록 ‘업데이트 계속’을 선택하세요.

prepare-not-offered-title = Windows 업데이트가 Windows 11 버전 { $release }을(를) 제공하기를 기다리는 중
prepare-transition-failed-title = Windows를 버전 { $release }(으)로 바꾸지 못했습니다
prepare-failed-feature-not-offered = Windows 업데이트가 PC에 Windows 11 버전 { $release }을(를) 제공하기까지 시간이 걸릴 수 있습니다. PC는 아직 버전 { $current }입니다.
prepare-offer-rechecking = Fluxxwave가 10분마다 다시 확인하며, Windows 업데이트가 제공하는 즉시 스스로 계속 진행합니다. ‘다시 확인’을 선택할 수도 있습니다.
prepare-offer-waited = { $minutes }분 동안 기다리는 중입니다.
prepare-offer-next-check = { $minutes }분 후에 다시 확인합니다.
prepare-offer-checking-now = 지금 확인하는 중입니다.
prepare-offer-check-again = 지금 확인하려면 ‘다시 확인’을 선택하세요.
prepare-offer-wait-ended-title = Windows 업데이트가 아직 Windows 11 버전 { $release }을(를) 제공하지 않았습니다
prepare-offer-wait-ended = Windows 업데이트가 2시간 안에 Windows 11 버전 { $release }을(를) 제공하지 않아, Fluxxwave가 기다리기를 멈추고 Windows 업데이트 설정을 되돌렸습니다. 나중에 ‘다시 확인’을 선택하세요. 기다릴 수 없다면 파일을 백업하고 Fluxxwave ISO로 Windows를 다시 설치하세요.
prepare-offer-wait-put-back-failed = Windows 업데이트가 2시간 안에 Windows 11 버전 { $release }을(를) 제공하지 않았으며, Fluxxwave가 Windows 업데이트 설정을 되돌리지 못했습니다. ‘설정 되돌리기’를 선택해 다시 시도하세요. 세부 정보: { $error }
prepare-failed-feature-hardware = 이 PC는 Windows 11 하드웨어 요구 사항({ $missing })을 충족하지 않아 Windows 업데이트가 버전 { $release }(으)로 바꾸지 않습니다. PC는 아직 버전 { $current }입니다. Fluxxwave { $version } 버전을 사용하려면 파일을 백업하고 Fluxxwave ISO로 Windows를 다시 설치하세요.
hardware-tpm = TPM 2.0
hardware-uefi = UEFI 펌웨어
prepare-failed-feature-hidden = 이 PC의 Windows 업데이트에서 Windows 11 버전 { $release }이(가) 숨겨져 있습니다. 숨길 때 사용한 도구로 다시 표시한 다음 ‘다시 시도’를 선택하세요.
prepare-failed-feature-disk-space = 이 업데이트에는 { $drive } 드라이브에 최소 { $needed } GB의 여유 공간이 필요한데, 현재 { $free } GB가 있습니다. Fluxxwave는 아무것도 변경하지 않았습니다. 공간을 확보한 다음 ‘다시 시도’를 선택하세요.
prepare-failed-feature-servicing = Windows가 복구할 수 없는 구성 요소 저장소 손상을 보고해서 Fluxxwave는 아무것도 변경하지 않았습니다. Windows를 복구한 다음 ‘다시 시도’를 선택하세요.
prepare-failed-feature-managed = 이 PC는 조직의 업데이트 서버에서 업데이트를 받기 때문에 Fluxxwave가 버전 { $release }(으)로 바꿀 수 없습니다. Fluxxwave는 아무것도 변경하지 않았습니다.
prepare-failed-feature-policy = Fluxxwave가 { $setting } 값을 바꾼 뒤에도 이 PC의 무언가가 계속 원래대로 되돌려서 Fluxxwave가 Windows를 업데이트할 수 없습니다. 조직에서 관리하는 PC라면 조직에 문의하세요. 중지하면 Fluxxwave가 변경한 내용을 되돌립니다.
prepare-failed-feature-blocked = Fluxxwave가 변경하지 않은 설정 때문에 Windows 업데이트가 실행되지 않습니다: { $setting }. Windows 업데이트가 실행될 수 있도록 설정을 바꾼 다음 ‘다시 시도’를 선택하세요.
prepare-failed-feature-rolled-back = Windows가 다시 시작하는 동안 버전 { $release } 설치를 마치지 못하고 버전 { $current }(으)로 돌아갔습니다. 파일과 앱에는 영향이 없습니다. ‘다시 시도’ 또는 ‘보고서 보내기’를 선택하세요.
prepare-failed-feature-components-lost = Windows 업데이트 후 Fluxxwave의 변경 사항 일부가 사라졌는데, Windows가 스스로 다시 설치된 흔적이 없어 Fluxxwave가 무슨 일이 있었는지 알 수 없습니다. Fluxxwave { $version } 버전은 설치되지 않았습니다. Atlas 팀이 도울 수 있도록 ‘보고서 보내기’를 선택하세요.
prepare-failed-feature-build = Fluxxwave가 업데이트하는 동안 이 PC의 Windows 버전이 바뀌었습니다. ‘설정 되돌리기’를 선택한 다음 홈에서 다시 시작하세요.
prepare-failed-feature-journal = Fluxxwave가 변경한 Windows 업데이트 설정의 기록을 읽을 수 없어서 아무것도 변경하거나 되돌리지 않습니다. Atlas 팀이 도울 수 있도록 ‘보고서 보내기’를 선택하세요.
prepare-failed-feature-pin = 이 PC의 Windows 업데이트 정책 { $setting }에 Fluxxwave가 기록할 수 없는 값이 있어서 Fluxxwave는 아무것도 변경하지 않았습니다. Atlas 팀이 도울 수 있도록 ‘보고서 보내기’를 선택하세요.
prepare-failed-feature-terms = Windows 11 버전 { $release }의 사용 조건에 동의한 다음 ‘다시 시도’를 선택하세요.
prepare-failed-feature-failed = Windows가 버전 { $release }을(를) 설치하지 못했습니다. PC는 아직 버전 { $current }입니다. ‘다시 시도’를 선택하세요. 또 실패하면 ‘보고서 보내기’를 선택하세요.
prepare-check-again = 다시 확인
prepare-keep-version = 버전 { $current } 유지

stop-update-title = Fluxxwave { $version }(으)로 업데이트하는 것을 중지하시겠습니까?
stop-update-title-windows = Windows 업데이트를 중지하시겠습니까?
stop-update-before = Fluxxwave가 변경한 Windows 업데이트 설정을 되돌립니다. Windows가 이미 설치한 업데이트는 그대로 유지되며, PC는 Windows 11 버전 { $current }에 머무릅니다.
stop-update-after = PC는 Windows 11 버전 { $release }에 머무릅니다. Fluxxwave가 변경한 Windows 업데이트 설정을 되돌립니다.
stop-update-access = Fluxxwave가 변경한 Windows 업데이트 설정을 되돌립니다. Windows가 이미 설치한 업데이트는 그대로 유지됩니다.
stop-update-keep = 계속 업데이트
window-close-update-access-title = Fluxxwave를 닫으시겠습니까?
window-close-update-access-message = Fluxxwave가 닫기 전에 변경한 Windows 업데이트 설정을 되돌립니다. 업데이트는 홈에서 다시 시작할 수 있습니다.
window-close-put-back = 되돌리고 닫기
window-close-put-back-failed-title = 설정을 되돌리지 않고 닫으시겠습니까?
window-close-put-back-failed-message = 지금 Fluxxwave를 닫으면 Windows 업데이트 설정이 Fluxxwave가 변경한 상태로 남습니다. Fluxxwave를 다시 열면 홈에서 되돌릴 수 있습니다.

installed-update-off-again = 선택한 대로 Windows 업데이트가 다시 꺼졌습니다. 꺼져 있는 동안에는 PC가 보안 업데이트를 받지 않습니다.
installed-update-paused-again = 선택한 대로 Windows 업데이트가 다시 일시 중지되었습니다. 일시 중지된 동안에는 PC가 보안 업데이트를 받지 않습니다.

detail-build-transition = 이 PC는 Windows 11 버전 { $current }이며, 이 Fluxxwave 버전에서는 지원되지 않습니다. 아래에서 Windows를 업데이트할 때 Fluxxwave가 Windows를 버전 { $release }(으)로 바꿉니다.

report-transition-intro = Fluxxwave를 위한 Windows 업데이트가 완료되지 않았습니다. Atlas 팀을 위한 세부 정보:

mode-rebase = Windows 업데이트 후 다시 설치
history-mode-rebase = Windows 업데이트 후 다시 설치
ready-rebase-title = Windows가 업데이트하면서 스스로 다시 설치되었습니다
ready-rebase-message = Windows 11 버전 { $release }이(가) 이 PC에 있던 Windows를 대체해서 Fluxxwave의 변경 사항 일부가 사라졌습니다. Fluxxwave { $version } 버전이 Fluxxwave { $previous } 버전에서 선택한 내용으로 다시 적용합니다.
rebase-choices-title = Fluxxwave { $previous } 버전의 선택 사항
rebase-choices-detail = Fluxxwave가 Fluxxwave { $previous } 버전에서 선택한 내용을 사용하므로 여기에서 선택할 것이 없습니다. 나중에 바꾸려면 ‘Fluxxwave 다시 설치’를 선택한 다음 ‘다시 선택’을 선택하세요.
rebase-choices-partial = Fluxxwave가 Fluxxwave { $previous } 버전에서 선택한 내용을 사용합니다. 다음 항목은 찾지 못했으니 확인하세요: { $missing }
restart-other-title = 다른 사람이 이 PC에 로그인해 있습니다
restart-others-title = 다른 사람들이 이 PC에 로그인해 있습니다
restart-others-message = 다시 시작하면 그 사용자의 앱이 닫히고 저장하지 않은 작업이 사라집니다. 로그인한 사용자: { $names }.
restart-others-keep = 다시 시작 안 함
restart-others-restart = 그래도 다시 시작
prepare-store-self-update = 먼저 Microsoft Store를 업데이트하는 중입니다. 이 PC의 Store가 오래된 버전입니다.
prepare-store-repair = Microsoft Store를 복구하는 중입니다. 몇 분 걸릴 수 있습니다.
prepare-store-updated = Microsoft Store가 오래된 버전이어서 Fluxxwave가 앱보다 먼저 업데이트했습니다.
prepare-store-bootstrapped = Microsoft Store가 스스로 업데이트하지 못해서 Fluxxwave가 Microsoft에서 최신 앱 설치 관리자와 Microsoft Store를 받아 설치했습니다.
prepare-store-repaired = Microsoft Store가 작동하지 않아서 Fluxxwave가 복구했습니다.
prepare-store-skipped-removed = 이 PC에서는 Microsoft Store가 꺼져 있어서 Fluxxwave가 Store 앱 업데이트를 건너뛰었습니다.
prepare-failed-store-repair-failed = 이 PC의 Microsoft Store가 앱을 설치하거나 업데이트할 수 없으며, Fluxxwave가 복구하지 못했습니다. Store가 고장 난 상태에서 Fluxxwave를 설치하면 Store와 Store 앱이 계속 고장 난 채로 남을 수 있어서, Store가 작동해야 합니다. ‘Microsoft Store 복구’를 선택해 다시 시도하세요. 그래도 작동하지 않으면 파일을 백업하고 Fluxxwave ISO로 Windows를 다시 설치하거나 ‘보고서 보내기’를 선택하세요.
prepare-repair-store = Microsoft Store 복구

screen-keyboard-title = 키보드 언어
screen-keyboard-question = 키보드 언어를 여러 개 사용하시나요?
playbook-option-keyboard-shortcuts = 예, 바로 가기 키로 전환
playbook-option-keyboard-selector = 예, 작업 표시줄 선택기로 전환
playbook-option-keyboard-single = 아니요, 키보드 레이아웃을 하나만 사용
consequence-keyboard-shortcuts = Alt+Shift로 언어를, Ctrl+Shift로 레이아웃을 전환합니다.
consequence-keyboard-selector = 게임 중 실수로 전환되지 않도록 Alt+Shift와 Ctrl+Shift를 끕니다.
playbook-page-keyboard-shortcuts-description = 키보드 언어를 전환하는 방법을 선택하세요.
consequence-keyboard-single = { consequence-keyboard-selector }
