# ============================================
# Stage 1: Build production dependencies
# ============================================
FROM node:24-alpine AS builder

WORKDIR /app

# Copy dependency manifests first for better layer caching
COPY package*.json ./

# Install production dependencies only
RUN npm ci --omit=dev --ignore-scripts


# ============================================
# Stage 2: Production runtime
# ============================================
FROM node:24-alpine AS runtime

WORKDIR /app

# Copy only production dependencies from builder
COPY --from=builder /app/node_modules ./node_modules

# Copy application source code
COPY . .

# Remove npm and npx from the production image
RUN rm -rf /usr/local/lib/node_modules/npm \
           /usr/local/bin/npm \
           /usr/local/bin/npx

# Run application as non-root user
USER node

EXPOSE 3000

CMD ["node", "server.js"]