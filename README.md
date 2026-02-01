# Tarun Gupta | Portfolio Website

A modern, responsive portfolio website for an AI Engineer & Full Stack Developer.

## 🚀 Quick Deploy

### Option 1: Netlify (Easiest - 2 minutes)
1. Put all files in a folder
2. Go to [netlify.com](https://netlify.com)
3. Drag and drop the folder
4. Done! Your site is live.

### Option 2: GitHub Pages (Free)
1. Create a GitHub repository
2. Upload `index.html`, `script.js`, `styles.css`
3. Go to Settings → Pages
4. Enable GitHub Pages from main branch
5. Your site will be at `https://yourusername.github.io/repo-name/`

### Option 3: Vercel (Fast)
```bash
npm install -g vercel
vercel
```

## 📁 Files

- `index.html` - Main HTML structure
- `script.js` - Interactive features and animations
- `styles.css` - Styling and responsive design

## ✨ Features

- **Responsive Design** - Works on all devices
- **Smooth Animations** - Scroll reveal, hover effects, parallax
- **Modern UI** - Glass morphism, gradients, dark theme
- **Interactive Elements** - 3D card tilt, magnetic buttons, particle effects
- **Contact Form** - Ready for integration with Formspree or EmailJS
- **SEO Friendly** - Proper meta tags and semantic HTML

## 🛠️ Customization

### Update Personal Information

In `index.html`, search and replace:
- `tarun@example.com` → Your email
- `https://github.com` → Your GitHub profile
- `https://linkedin.com` → Your LinkedIn profile
- `https://twitter.com` → Your Twitter profile
- `+91 XXXXX XXXXX` → Your phone number
- `India` → Your location

### Add Your Photo

Replace the placeholder in the About section:
```html
<div class="about-image">
    <img src="your-photo.jpg" alt="Tarun Gupta" class="profile-photo">
</div>
```

### Update Projects

Edit the project cards in the Projects section with your actual projects.

### Update Skills

Modify the skills section to reflect your actual skills and technologies.

## 📱 Testing Locally

Simply open `index.html` in your browser:
```bash
# On macOS
open index.html

# On Windows
start index.html

# On Linux
xdg-open index.html
```

Or use a local server:
```bash
# Using Python 3
python -m http.server 8000

# Using Node.js (http-server)
npx http-server
```

Then visit `http://localhost:8000`

## 🔧 Contact Form Integration

The contact form currently shows a success message. To make it functional:

### Using Formspree (Free)
1. Sign up at [formspree.io](https://formspree.io)
2. Get your form endpoint
3. Update `script.js` line 125:
```javascript
fetch('https://formspree.io/f/YOUR_FORM_ID', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(formData)
})
```

### Using EmailJS
1. Sign up at [emailjs.com](https://emailjs.com)
2. Follow their integration guide
3. Update the form submission in `script.js`

## 📊 Analytics

Add Google Analytics before `</head>` in `index.html`:
```html
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## 🌐 Custom Domain

After deploying, add a custom domain:
- **Netlify:** Domain settings → Add custom domain
- **GitHub Pages:** Settings → Pages → Custom domain
- **Vercel:** Project settings → Domains

## 📄 License

This portfolio is free to use and modify for personal projects.

## 🤝 Contributing

Feel free to fork this project and customize it for your needs!

---

**Built with ❤️ by Tarun Gupta**
