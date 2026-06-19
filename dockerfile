FROM node:22-slim

# 基本ツール（git等、バイブコーディングで使う想定）
RUN apt-get update && apt-get install -y \
    git \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Gemini CLI をグローバルインストール
RUN npm install -g @google/gemini-cli

# 作業ディレクトリ
WORKDIR /workspace

CMD ["/bin/bash"]