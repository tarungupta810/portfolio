# Portfolio Website Deployment Guide

Your portfolio website is ready to deploy! This guide will walk you through several free and easy deployment options.

## 📁 Your Website Files

Your website consists of three files:
- `index.html` - Main HTML file
- `script.js` - JavaScript functionality
- `styles.css` - Styling

## 🚀 Deployment Options

### Option 1: GitHub Pages (Recommended - Free)

**Pros:** Free, easy, integrates with GitHub, custom domain support
**Best for:** Developers with GitHub accounts

#### Steps:

1. **Create a GitHub Repository**
   - Go to [github.com](https://github.com) and sign in
   - Click the "+" icon → "New repository"
   - Name it something like `portfolio` or `yourname-portfolio`
   - Make it "Public" (required for GitHub Pages)
   - Click "Create repository"

2. **Upload Your Files**
   - Click "uploading an existing file"
   - Drag and drop your three files: `index.html`, `script.js`, `styles.css`
   - Add a commit message like "Initial portfolio upload"
   - Click "Commit changes"

3. **Enable GitHub Pages**
   - Go to your repository
   - Click "Settings" tab
   - On the left sidebar, click "Pages"
   - Under "Build and deployment", select "Source" → "Deploy from a branch"
   - Select "main" branch and "/ (root)" folder
   - Click "Save"

4. **Access Your Website**
   - Wait 1-2 minutes for deployment
   - Your website will be available at: `https://yourusername.github.io/repository-name/`
   - Example: `https://tarungupta.github.io/portfolio/`

5. **Custom Domain (Optional)**
   - In Pages settings, click "Custom domain"
   - Enter your domain (e.g., `tarungupta.dev`)
   - Follow the DNS instructions provided

---

### Option 2: Netlify (Easiest - Free)

**Pros:** Drag-and-drop deployment, instant preview, custom domain, free SSL
**Best for:** Quick deployment without Git

#### Steps:

1. **Prepare Your Files**
   - Create a folder on your computer
   - Put all three files (`index.html`, `script.js`, `styles.css`) in that folder

2. **Deploy to Netlify**
   - Go to [netlify.com](https://netlify.com) and sign up
   - Once logged in, go to the "Sites" tab
   - Drag and drop your folder onto the page
   - Wait a few seconds for deployment

3. **Access Your Website**
   - Netlify will provide a URL like: `https://random-name-12345.netlify.app`
   - You can change the site name in "Site settings" → "Change site name"

4. **Custom Domain (Optional)**
   - Go to "Domain settings" → "Add custom domain"
   - Follow the instructions to connect your domain

---

### Option 3: Vercel (Fast - Free)

**Pros:** Fast deployment, great performance, custom domain, free SSL
**Best for:** Modern web projects

#### Steps:

1. **Install Vercel CLI (Optional)**
   ```bash
   npm install -g vercel
   ```

2. **Deploy via CLI**
   ```bash
   cd "/Users/tarun/Portfolio Website"
   vercel
   ```
   - Follow the prompts
   - Your site will be deployed instantly

3. **Or Deploy via Dashboard**
   - Go to [vercel.com](https://vercel.com) and sign up
   - Click "Add New" → "Project"
   - Import your files or connect to GitHub
   - Click "Deploy"

4. **Access Your Website**
   - Your website will be available at: `https://your-project.vercel.app`

---

### Option 4: Traditional Web Hosting

**Pros:** Full control, email accounts, database support
**Best for:** Professional websites with custom needs

#### Steps:

1. **Choose a Hosting Provider**
   - Popular options: Bluehost, HostGator, GoDaddy, Namecheap
   - Look for shared hosting plans (usually $3-10/month)

2. **Upload Files**
   - Use FTP client (FileZilla) or hosting control panel
   - Upload all three files to the `public_html` folder

3. **Access Your Website**
   - Your website will be available at your domain

---

## 📋 Pre-Deployment Checklist

Before deploying, make sure to:

- [ ] Update placeholder content in `index.html`:
  - Replace `tarun@example.com` with your actual email
  - Update social media links (GitHub, LinkedIn, Twitter)
  - Replace "Your Photo Here" with your actual photo
  - Update phone number and location
  - Customize project descriptions and links

- [ ] Test locally:
  ```bash
  # Open index.html in your browser
  open index.html
  ```

- [ ] Check all links work correctly
- [ ] Test the contact form (it currently shows a success message but doesn't send emails)
- [ ] Verify responsive design on mobile devices

---

## 🔧 Post-Deployment Tasks

### 1. Add Analytics (Optional)

**Google Analytics:**
- Create account at [analytics.google.com](https://analytics.google.com)
- Add tracking code to `index.html` before `</head>`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### 2. Set Up Contact Form (Optional)

Currently, the contact form only shows a success message. To make it functional:

**Option A: Formspree (Free)**
1. Sign up at [formspree.io](https://formspree.io)
2. Get your form endpoint URL
3. Update `script.js` form submission:
```javascript
fetch('https://formspree.io/f/YOUR_FORM_ID', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify(formData)
})
```

**Option B: EmailJS (Free tier available)**
1. Sign up at [emailjs.com](https://emailjs.com)
2. Follow their integration guide
3. Update the form submission in `script.js`

### 3. Add Favicon (Optional)

Create a favicon and add to `index.html`:
```html
<link rel="icon" type="image/x-icon" href="favicon.ico">
```

### 4. Optimize Performance (Optional)

- Compress images before uploading
- Minify CSS and JavaScript files
- Enable gzip compression on your hosting

---

## 🌐 Custom Domain Setup

If you want a custom domain (e.g., `tarungupta.dev`):

1. **Buy a Domain**
   - Namecheap, GoDaddy, Google Domains, etc.
   - Cost: ~$10-15/year

2. **Configure DNS**
   - Go to your domain registrar
   - Add DNS records based on your hosting platform:
   
   **GitHub Pages:**
   ```
   A    @    185.199.108.153
   A    @    185.199.109.153
   A    @    185.199.110.153
   A    @    185.199.111.153
   CNAME www    yourusername.github.io
   ```
   
   **Netlify/Vercel:**
   - Follow their specific instructions in the dashboard

3. **Update Platform Settings**
   - Add your custom domain in the platform's settings
   - Enable SSL/HTTPS (usually automatic)

---

## 📱 Testing Your Deployed Website

After deployment, test:

1. **Desktop browsers:** Chrome, Firefox, Safari, Edge
2. **Mobile devices:** iOS Safari, Android Chrome
3. **Different screen sizes:** Use browser DevTools (F12 → Toggle device toolbar)
4. **All links:** Navigation, social media, project links
5. **Contact form:** Test submission
6. **Performance:** Use [PageSpeed Insights](https://pagespeed.web.dev)

---

## 🔄 Updating Your Website

### GitHub Pages:
```bash
git add .
git commit -m "Update portfolio"
git push
```
Changes auto-deploy in 1-2 minutes

### Netlify/Vercel:
- Push changes to connected Git repository
- Or drag-and-drop updated files

### Traditional Hosting:
- Upload updated files via FTP or control panel

---

## 🆘 Troubleshooting

**Website not loading:**
- Check if files are in the correct directory
- Verify file names match exactly (case-sensitive)
- Clear browser cache

**Styles not applying:**
- Ensure `styles.css` is in the same folder as `index.html`
- Check the link tag in HTML: `<link rel="stylesheet" href="styles.css">`

**JavaScript not working:**
- Ensure `script.js` is in the same folder
- Check the script tag in HTML: `<script src="script.js"></script>`
- Check browser console for errors (F12 → Console)

**404 errors:**
- Verify all file paths are correct
- Check case sensitivity (Linux servers are case-sensitive)

---

## 📚 Additional Resources

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Netlify Documentation](https://docs.netlify.com)
- [Vercel Documentation](https://vercel.com/docs)
- [MDN Web Docs](https://developer.mozilla.org)

---

## ✅ Quick Start Recommendation

For the fastest deployment, I recommend **Netlify**:

1. Create a folder with your three files
2. Go to netlify.com
3. Drag and drop the folder
4. Done! Your website is live in seconds.

For long-term maintenance and version control, use **GitHub Pages**.

---

**Need help?** Check the troubleshooting section or refer to the platform's documentation.
