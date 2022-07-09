Для запросов с curl:

```shell
curl --insecure -u admin:secret https://localhost:8080/cards
```

Для запросов с сертификатами (mTLS):

```shell
curl --insecure --key admin.key --cert admin.crt https://localhost:8080/cards
```

Пароль - `secret`

Для запросов с отправкой файла:

```shell
curl --insecure -X POST -H "Content-Type: image/png" -u admin:secret --data-binary "@logo.png" https://localhost:8080/media/bytes
```

В ответ придёт путь, по которому загружен файл. Удостоверьтесь, что файл появился в `./media` и что он доступен по адресу:

```shell
curl --insecure https://localhost:8080/<url>
```

