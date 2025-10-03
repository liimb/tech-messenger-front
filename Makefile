## Установка зависимостей
get:
	flutter pub get

## Очистка проекта
clean:
	flutter clean
	flutter pub get

## Сборка apk
apk:
	flutter build apk --release

## Генерация локализации
locale:
	flutter gen-l10n

## Генерация кода build_runner
runner:
	dart run build_runner build --delete-conflicting-outputs
