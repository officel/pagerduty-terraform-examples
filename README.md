# pagerduty-terraform-examples

[技術書典16](https://techbookfest.org/event/tbf16) - PagerDuty ファンブック - PagerDuty &amp; Terraform のサンプルリポジトリ

## 記事には書かなかったこと

### 環境変数について

> terraform に変数を渡す方法はいくつかありますが、コードに書いてしまうと必須で踏襲することになってしまいます。
（もちろん正確には内容次第で環境変数による上書きは可能です）
PagerDuty のアクセス方法やユーザを切り替えたい場合もあると思うので、PagerDuty provider で必要なトークンは環境変数で渡すようにします。
むしろ Provider のアクセス設定等は可能な限りコードに書かないことで、実行者が所持しているアクセス方法で簡単に切り替えることができます。
実行時に環境変数を渡す方法もいくつかありますが、毎回 export を叩くよりは、direnv を構成しておくと便利です。

という文を書いていたんだけど、本質的じゃないので避けた。環境変数を設定する方法は各自が好きにできればいいかなって。

[direnv](https://github.com/direnv/direnv) をインストールして、`.env` と `.envrc` を用意して `direnv allow` すれば手っ取り早いと思います。

```bash
pagerduty-terraform-examples $ cat .env
PAGERDUTY_TOKEN="ここにトークン"
# 他のサービスのクレデンシャルもここにまとめておくと便利

pagerduty-terraform-examples $ cat .envrc
# .env を読み込んで環境変数にする
dotenv

# AWS
export AWS_REGION=ap-northeast-1

# DataDog

# PagerDuty

pagerduty-terraform-examples $ direnv allow
direnv: loading /pagerduty-terraform-examples/.envrc
direnv: export +AWS_REGION +PAGERDUTY_TOKEN
```

### terraform のインストールについて

> terraform をローカルにインストールする際は tfenv を使いましょう。

という文を書いていたんだけど削除した。terraform のインストールとバージョン管理も各自の裁量で好きにできればいいかなって。

- 公式ドキュメント [Install | Terraform | HashiCorp Developer](https://developer.hashicorp.com/terraform/install)
- 個人的な推奨 [tfutils/tfenv: Terraform version manager](https://github.com/tfutils/tfenv)
- ベタに Windows で使いたいなら [pearcec/Invoke-Terraform](https://github.com/pearcec/Invoke-Terraform)
- 他にも [warrensbox/terraform-switcher](https://github.com/warrensbox/terraform-switcher)

というか、こういうのは Terraform の本でやればいいかと思った次第。
