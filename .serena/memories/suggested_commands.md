# 推奨コマンド

## ビルドとテスト

### すべてのプロジェクトをビルドおよびテスト
```bash
cargo make
```

### 安定版Rustでビルド
```bash
cargo make build-stable
```

### ナイトリー版Rustでビルド
```bash
cargo make build-nightly
```

### 安定版Rustでテスト
```bash
cargo make test-stable
```

### すべてのプロジェクトをクリーン
```bash
cargo make clean
```

## 個別のプロジェクトでの作業

### 特定のプロジェクトに移動してビルド
```bash
cd ch05/5-1
cargo build
```

### 特定のプロジェクトでテスト実行
```bash
cd ch03/3-5/test_code
cargo test
```

### 特定のプロジェクトを実行
```bash
cd ch05/5-1
cargo run
```

### Cargo.lockを削除して再ビルド
```bash
rm -f Cargo.lock
cargo build
```

## Cargoの標準コマンド

### プロジェクトのビルド
```bash
cargo build
```

### リリースビルド（最適化有効）
```bash
cargo build --release
```

### プロジェクトの実行
```bash
cargo run
```

### テストの実行
```bash
cargo test
```

### クリーンアップ
```bash
cargo clean
```

### ドキュメント生成
```bash
cargo doc --open
```

### コードのチェック（コンパイルせずに型チェックのみ）
```bash
cargo check
```

### フォーマット
```bash
cargo fmt
```

### Linting
```bash
cargo clippy
```

## システムコマンド（Linux）
* `ls` - ファイル一覧
* `cd` - ディレクトリ移動
* `cat` - ファイル内容表示
* `grep` - テキスト検索
* `find` - ファイル検索
* `tree` - ディレクトリツリー表示
* `git` - バージョン管理