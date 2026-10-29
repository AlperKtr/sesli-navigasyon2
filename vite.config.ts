import { defineConfig } from 'vite';
import { resolve } from 'path';

export default defineConfig({
  base: './',
  build: {
    outDir: 'dist',
    // app.html'i giriş al, dist/index.html olarak çıkar
    rollupOptions: {
      input: resolve(__dirname, 'app.html'),
      output: {
        // Çıkan HTML dosyası: dist/index.html
        entryFileNames: 'assets/[name]-[hash].js',
        chunkFileNames: 'assets/[name]-[hash].js',
        assetFileNames: 'assets/[name]-[hash][extname]'
      }
    }
  },
  server: {
    port: 5173,
    host: true
  },
  test: {
    environment: 'jsdom',
    globals: true
  }
});

