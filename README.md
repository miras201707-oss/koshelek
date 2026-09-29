# Кошелёк — сборка настоящего IPA через Codemagic

Всё уже подготовлено: `ios-app/` — собираемый Xcode-проект,
`codemagic.yaml` в корне — рецепт сборки, `index.html` — сам кошелёк.
Зайти в твои GitHub/Codemagic я не могу, поэтому вот клики (минут 5–10).

## Шаг 1 — залить проект на GitHub (без git, через браузер)
1. Зайди на github.com → New repository → имя `koshelek` → Create.
2. На странице репозитория: Add file → Upload files.
3. Перетащи из папки «Расходы»: `index.html`, `codemagic.yaml`
   и папку `ios-app` целиком → Commit changes.

## Шаг 2 — подключить в Codemagic
1. codemagic.io → Applications → Add application → выбери GitHub → репозиторий `koshelek`.
2. Тип проекта: Other (проект соберётся по `codemagic.yaml` сам).
3. Start new build → workflow `ios-unsigned-ipa` → Start.
4. После сборки скачай `KoshelekApp-unsigned.ipa` из Artifacts.

## Шаг 3 — поставить на iPhone (Windows + шнур)
1. Поставь Sideloadly, подключи iPhone шнуром, войди со своим Apple ID.
2. Перетащи скачанный IPA в Sideloadly → Start.
3. На телефоне: Настройки → Основные → VPN и управление устройством → доверь сертификату.

## Важно
- Бесплатный Apple ID = подпись на 7 дней. Раз в неделю: шнур → Sideloadly → Start
  (2 минуты, данные в приложении сохраняются).
- Навсегда и без переподписей — только платный Apple Developer (99$/год).
- Если Sideloadly ругнётся на Bundle ID — поменяй `com.example.koshelek`
  на свой (например `com.tvoyoimya.koshelek`) в `project.pbxproj` (2 места).
