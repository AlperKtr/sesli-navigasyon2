import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.seslinavigasyon.app',
  appName: 'Sesli Navigasyon',
  webDir: 'dist',
  bundledWebRuntime: false,
  plugins: {
    CapacitorHttp: {
      enabled: true
    }
  },
  server: {
    androidScheme: 'https',
    cleartext: true
  }
};

export default config;

