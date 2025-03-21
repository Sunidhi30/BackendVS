#!/bin/bash
echo "Installing dependencies..."
npm install  # Installs dependencies from package.json

echo "Compiling TypeScript..."
npm run build  # Runs the "build" script, which compiles TypeScript to JavaScript


echo "Running database migrations..."
npx prisma migrate deploy

echo "Generating Prisma client..."
npx prisma generate

echo "Starting server..."
npm start  # Runs "start" script to execute compiled JavaScript
