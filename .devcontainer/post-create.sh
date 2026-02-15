#!/usr/bin/env bash
set -euo pipefail

echo "=== Rust Book devcontainer セットアップ開始 ==="

# -----------------------------------------------
# 1. Rust ツールチェーンの更新と nightly の追加
# -----------------------------------------------
echo ">>> Rust stable ツールチェーンを更新中..."
rustup update stable

echo ">>> Rust nightly ツールチェーンを追加中..."
rustup toolchain install nightly

# コンポーネントの追加
echo ">>> コンポーネントを追加中..."
rustup component add clippy rustfmt rust-src
rustup component add clippy rustfmt rust-src --toolchain nightly

# -----------------------------------------------
# 2. 組み込み開発用ターゲットの追加 (ch08)
# -----------------------------------------------
echo ">>> 組み込み開発用ターゲット (thumbv7em-none-eabihf) を追加中..."
rustup target add thumbv7em-none-eabihf
rustup target add thumbv7em-none-eabihf --toolchain nightly

# -----------------------------------------------
# 3. 追加の Cargo ツールのインストール
# -----------------------------------------------
echo ">>> cargo-make をインストール中..."
cargo install cargo-make

echo ">>> cargo-edit をインストール中..."
cargo install cargo-edit

echo ">>> cargo-watch をインストール中..."
cargo install cargo-watch

# -----------------------------------------------
# 4. システム依存パッケージのインストール
# -----------------------------------------------
echo ">>> システム依存パッケージをインストール中..."
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
    pkg-config \
    libssl-dev \
    libfreetype6-dev \
    libexpat1-dev \
    cmake

# -----------------------------------------------
# 5. 完了メッセージ
# -----------------------------------------------
echo ""
echo "=== セットアップ完了 ==="
echo "Rust stable: $(rustc --version)"
echo "Rust nightly: $(rustc +nightly --version)"
echo "Cargo: $(cargo --version)"
echo "cargo-make: $(cargo make --version 2>/dev/null | head -1)"
echo ""
echo "利用可能なコマンド:"
echo "  cargo make              - 全プロジェクトのビルド & テスト"
echo "  cargo make build-stable - 安定版でビルド"
echo "  cargo make test-stable  - 安定版でテスト"
echo "  cargo watch -x check    - ファイル変更時に自動チェック"
