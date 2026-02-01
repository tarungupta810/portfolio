#!/bin/bash

# Portfolio Website Deployment Script
# This script helps you deploy your portfolio to various platforms

echo "🚀 Portfolio Website Deployment Script"
echo "========================================"
echo ""

# Check if required files exist
if [ ! -f "index.html" ] || [ ! -f "script.js" ] || [ ! -f "styles.css" ]; then
    echo "❌ Error: Required files not found!"
    echo "   Make sure index.html, script.js, and styles.css are in the current directory."
    exit 1
fi

echo "✅ All required files found!"
echo ""

# Display deployment options
echo "Choose a deployment platform:"
echo "1) Netlify (Easiest - Drag & Drop)"
echo "2) GitHub Pages (Free - Requires GitHub)"
echo "3) Vercel (Fast - Requires Node.js)"
echo "4) Test Locally"
echo "5) Exit"
echo ""
read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        echo ""
        echo "📦 Netlify Deployment Instructions:"
        echo "===================================="
        echo ""
        echo "1. Create a folder named 'portfolio' on your desktop"
        echo "2. Copy these files into that folder:"
        echo "   - index.html"
        echo "   - script.js"
        echo "   - styles.css"
        echo ""
        echo "3. Go to https://app.netlify.com/drop"
        echo "4. Drag and drop the 'portfolio' folder onto the page"
        echo "5. Your website will be live in seconds!"
        echo ""
        echo "🌐 Your website URL will be: https://random-name.netlify.app"
        echo ""
        echo "💡 Tip: You can change the site name in Netlify dashboard"
        ;;
    
    2)
        echo ""
        echo "📦 GitHub Pages Deployment Instructions:"
        echo "========================================="
        echo ""
        echo "1. Go to https://github.com and sign in"
        echo "2. Click '+' → 'New repository'"
        echo "3. Name it 'portfolio' (or your preferred name)"
        echo "4. Make it 'Public' (required for GitHub Pages)"
        echo "5. Click 'Create repository'"
        echo ""
        echo "6. Upload your files:"
        echo "   - Click 'uploading an existing file'"
        echo "   - Drag and drop: index.html, script.js, styles.css"
        echo "   - Add commit message: 'Initial portfolio upload'"
        echo "   - Click 'Commit changes'"
        echo ""
        echo "7. Enable GitHub Pages:"
        echo "   - Go to repository → Settings → Pages"
        echo "   - Under 'Build and deployment', select 'Deploy from a branch'"
        echo "   - Select 'main' branch and '/ (root)' folder"
        echo "   - Click 'Save'"
        echo ""
        echo "🌐 Your website will be at: https://yourusername.github.io/repository-name/"
        echo ""
        echo "⏱️  Wait 1-2 minutes for deployment to complete"
        ;;
    
    3)
        echo ""
        echo "📦 Vercel Deployment Instructions:"
        echo "=================================="
        echo ""
        # Check if Node.js is installed
        if ! command -v node &> /dev/null; then
            echo "❌ Node.js is not installed!"
            echo "   Please install Node.js from https://nodejs.org"
            exit 1
        fi
        
        # Check if Vercel CLI is installed
        if ! command -v vercel &> /dev/null; then
            echo "📥 Installing Vercel CLI..."
            npm install -g vercel
        fi
        
        echo "🚀 Deploying to Vercel..."
        echo ""
        vercel
        ;;
    
    4)
        echo ""
        echo "🧪 Testing Locally:"
        echo "==================="
        echo ""
        
        # Check if Python is available
        if command -v python3 &> /dev/null; then
            echo "📡 Starting local server on http://localhost:8000"
            echo "   Press Ctrl+C to stop"
            echo ""
            python3 -m http.server 8000
        elif command -v python &> /dev/null; then
            echo "📡 Starting local server on http://localhost:8000"
            echo "   Press Ctrl+C to stop"
            echo ""
            python -m http.server 8000
        else
            echo "📂 Opening index.html in default browser..."
            if [[ "$OSTYPE" == "darwin"* ]]; then
                open index.html
            elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
                xdg-open index.html
            else
                start index.html
            fi
        fi
        ;;
    
    5)
        echo ""
        echo "👋 Goodbye!"
        exit 0
        ;;
    
    *)
        echo ""
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac

echo ""
echo "✅ For detailed deployment instructions, see DEPLOYMENT_GUIDE.md"
echo ""
