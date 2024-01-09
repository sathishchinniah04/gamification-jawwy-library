import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'gamification-jawwy-library' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

const GamificationJawwyLibrary = NativeModules.GamificationJawwyLibrary
  ? NativeModules.GamificationJawwyLibrary
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function loadGame(msisdn: String, baseUrl: String, subscriptionId: String, language: String, token: String): Promise<string> {
  return GamificationJawwyLibrary.loadGame(msisdn, baseUrl, subscriptionId, language, token);
}
