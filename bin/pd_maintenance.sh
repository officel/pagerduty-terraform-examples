#! /usr/bin/env bash

# PagerDuty のメンテナンスウィンドウを設定するシェル
# [API Reference | PagerDuty Developer Documentation](https://developer.pagerduty.com/api-reference/a450bc9b9ea6f-create-a-maintenance-window)

# My Profiles の User Settings からトークン（必須）
export PD_TOKEN=${PAGERDUTY_TOKEN:-""}

# 自分のメールアドレス（必須）
export PD_MAIL=""

# メンテナンスウィンドウを設定するサービスID
export PD_SERVICE=""  # 7桁くらいの英数字

export PD_START_TIME='2024-05-26T23:00:00+09:00'
export PD_END_TIME='2024-05-27T03:00:00+09:00'
export PD_DESC='5月26日（日）午後11時から翌17日午前3時（4時間）'

curl -s \
    --request POST \
    --url    https://api.pagerduty.com/maintenance_windows \
    --header 'Accept: application/json' \
    --header "Authorization: Token token=${PD_TOKEN}" \
    --header 'Content-Type: application/json' \
    --header "From: ${PD_MAIL}" \
    --data '{
        "maintenance_window": {
            "type": "maintenance_window",
            "start_time":  "'"${PD_START_TIME}"'",
            "end_time":    "'"${PD_END_TIME}"'",
            "description": "'"${PD_DESC}"'",
            "services": [
                {
                    "id":  "'"${PD_SERVICE}"'",
                    "type": "service_reference"
                }
            ]
        }
    }' | jq -cr '.maintenance_window.html_url'
