// NEXUS Arcade: retire the old mGBA cache. EmulatorJS uses its official stable CDN.
self.addEventListener('install', event => event.waitUntil(self.skipWaiting()));
self.addEventListener('activate', event => event.waitUntil((async () => { const keys = await caches.keys(); await Promise.all(keys.filter(k => k.startsWith('nexus-mgba-')).map(k => caches.delete(k))); await self.clients.claim(); })()));
