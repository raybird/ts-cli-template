# ts-cli Template

一個輕量級的 TypeScript CLI 工具範本，整合了 [Commander.js](https://github.com/tj/commander.js) 與 [tsx](https://github.com/privatenumber/tsx)，讓你能夠直接執行 TypeScript 腳本而無需繁瑣的編譯步驟。

## 特色 (Features)

- 🚀 **即時執行**：透過 `tsx` 直接執行 `.ts` 檔案，開發體驗流暢。
- 🛠 **強大路徑解析**：完整的 `commander.js` 支援，輕鬆定義指令與參數。
- 📦 **類型安全**：原生 TypeScript 支援，享受完整的型別檢查。

## 前置需求 (Prerequisites)

- [Node.js](https://nodejs.org/) (建議 v18 或以上版本)
- [pnpm](https://pnpm.io/) (推薦使用，但 npm/yarn 亦可)

## 安裝 (Installation)

1. **安裝專案依賴**：
   ```bash
   pnpm install
   ```

2. **賦予執行權限**（Linux/macOS）：
   ```bash
   chmod +x cli
   ```

## 使用方式 (Usage)

直接執行 `./cli` 即可檢視說明文件與可用指令：

```bash
./cli --help
```

### 內建範例指令

- **建置專案 (Build)**：
  ```bash
  ./cli build
  ```

- **部署專案 (Deploy)**：
  ```bash
  ./cli deploy
  ```

## 編譯獨立執行檔

先依照安裝步驟執行 `pnpm install`，並準備支援單檔編譯的 [Bun](https://bun.com/docs/installation)，再執行：

```bash
pnpm run build:standalone
./dist/monorepo --help
```

產物內含 Bun 與 CLI 依賴。把執行檔複製到相同作業系統與架構的電腦，就能直接執行，無須安裝 Node.js、pnpm 或 Bun。Windows 的產物為 `dist/monorepo.exe`。

## 開發指南 (Development)

本專案使用 `commander` 進行指令管理。你可以在 `cli.ts` 檔案中擴充功能：

```typescript
// cli.ts
program
  .command('my-command')
  .description('這是一個新指令')
  .action(async () => {
    console.log('執行我的新邏輯...');
  });
```

## 參考資料 (References)

- [tsx.is/shell-scripts](https://tsx.is/shell-scripts)
- [Creating a TypeScript CLI for your Monorepo](https://dev.to/zirkelc/creating-a-typescript-cli-for-your-monorepo-5aa)