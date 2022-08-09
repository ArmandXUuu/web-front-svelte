# Install dependencies only when needed
FROM node:16-alpine3.14 AS deps
WORKDIR /app

# If using npm with a `package-lock.json` comment out above and use below instead
COPY package.json package-lock.json svelte.config.js vite.config.js ./
RUN npm ci

# Rebuild the source code only when needed
FROM node:16-alpine3.14
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY src ./src
COPY static ./static
COPY package.json package-lock.json svelte.config.js jsconfig.json vite.config.js ./
# If using npm comment out above and use below instead
RUN npm run build

CMD ["npm", "run", "preview"]
