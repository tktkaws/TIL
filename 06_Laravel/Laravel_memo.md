## Laravelのログ機能を使ってリクエストの中身を見る



`laravel/app/Http/Controllers/LineBotController.php`に以下のコードを追加してください。

なお、`class LineBotController extends Controller`の手前の`use Illuminate\Support\Facades\Log;`を見落とさずに追加してください。



`Log::debug(出力したい内容)`で、ログファイルに情報を出力できます。

リクエストを構成する要素に、ヘッダーとメッセージボディというものがありますが

- `$request->header()`はヘッダー
- `$request->input()`はメッセージボディ(GETリクエストの場合はクエリストリング)

が返されます。



aravelで取り扱う時刻を日本時間にするには`laravel/config/app.php`を修正します。

`'timezone'`の値を`'UTC'`から`'Asia/Tokyo'`に変更してください。



## ログファイルを日付ごとに別ファイルにする

`laravel/.env`を以下の通り修正してください。

```
# 略
LOG_CHANNEL=daily #-- この行を変更
# 略
```



ターミナルで以下のコマンドを叩いて変更を反映させます（忘れがち）。

```
$ php artisan config:cache
```

これで `laravel-2019-01-01.log` という感じで日別のログファイルが自動的に作られます。





Laravelのartisanコマンドにはコントローラとモデルのひな型を作ってくれるコマンドがあります。
`php artisan make:controller ItemController --model=Item`というコマンドです。





テストデータを作るにはLaravelの「シード」という仕組みを使うとラクです。
シードを使う事で、データベースの初期値やテストデータをまとめて登録する事ができます。

以下のコマンドで商品情報のシーダー（シードを作るプログラム）のテンプレートを作ります。

```
Copied!# php artisan make:seeder ItemsTableSeeder 
```

これで`database/seeds/ItemsTableSeeder.php`というファイルが作られます。
このファイルの`run()`メソッドを以下のようにします。



```
php artisan db:seed --class=ItemsTableSeeder
```





Laravelには`paginate()`という便利なメソッドがあるのでこれを使います。

ItemControllerのIndexアクションを以下のようにします。

```
php12345     Copied!    public function index()    {        $items = Item::paginate(15);        return view('item/index', ['items' => $items]);    } 
```

`Item::all()`を`Item::paginate(15)`に変えました。
コントローラでやる事はこれだけです。

ビューで`links()`メソッドを呼び出すと、ページネーションのリンクを表示する事ができます。





`ユーザーIDを取得するために、コントローラのファイルの先頭部分に`use Illuminate\Support\Facades\Auth;`を追加します。
これによりコントローラに認証情報（ユーザー情報）を扱う機能が追加されます。

