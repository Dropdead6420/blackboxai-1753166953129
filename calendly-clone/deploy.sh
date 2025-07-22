#!/bin/bash

# Calendly Clone Deployment Script
# This script helps deploy the application to Vercel

echo "🚀 Calendly Clone Deployment Script"
echo "=================================="

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "📦 Installing Vercel CLI..."
    npm i -g vercel
fi

# Check if environment variables are set
if [ ! -f .env.local ]; then
    echo "⚠️  .env.local not found. Please create it with your environment variables."
    echo "Copy .env.local.example to .env.local and fill in your values."
    exit 1
fi

# Build the application
echo "🔨 Building the application..."
npm run build

# Deploy to Vercel
echo "🚀 Deploying to Vercel..."
vercel --prod

echo "✅ Deployment complete!"
echo ""
echo "📋 Next steps:"
echo "1. Set up your database (PostgreSQL)"
echo "2. Configure environment variables in Vercel dashboard"
echo "3. Set up Stripe webhooks"
echo "4. Configure Google OAuth"
echo "5. Run database migrations: npx prisma migrate deploy"
echo ""
echo "🌐 Your Calendly Clone is now live!"
