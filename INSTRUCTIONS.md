# Setting Up Fider on Vercel

This document provides detailed instructions on how to set up Fider (an open-source feedback platform) on Vercel.

## What You'll Need

1. A Vercel account
2. A PostgreSQL database (Supabase or Heroku Postgres recommended)
3. A GitHub account

## Step 1: Create a PostgreSQL Database

### Option A: Supabase
1. Sign up at [Supabase](https://supabase.com)
2. Create a new project
3. From the dashboard, go to Settings > Database
4. Copy the Connection String with format:
   `postgres://postgres:[YOUR-PASSWORD]@db.[YOUR-PROJECT-REF].supabase.co:5432/postgres`

### Option B: Heroku Postgres
1. Create a Heroku app (or use your existing one)
2. Add the Postgres add-on (Hobby tier is sufficient to start)
3. In the app settings, find the DATABASE_URL config variable and copy it

## Step 2: Prepare for Vercel Deployment

The necessary files are already included in this repository:
- `Dockerfile`: Configures the Fider Docker image
- `vercel.json`: Defines the Vercel deployment settings
- `package.json`: Basic Node.js configuration
- `index.js`: Compatibility layer for Vercel

## Step 3: Deploy to Vercel

1. Go to [Vercel](https://vercel.com) and sign in
2. Click "New Project"
3. Import this GitHub repository (1nickfisher/fider-feedback)
4. Configure the environment variables:
   - `BASE_URL`: Leave blank for now (we'll update after deployment)
   - `JWT_SECRET`: Generate a random string (you can use an online generator)
   - `DATABASE_URL`: Your PostgreSQL connection string from Step 1
   - `EMAIL_NOREPLY`: The email address for notifications
5. Deploy!

## Step 4: Update BASE_URL

After deployment:
1. Copy your Vercel deployment URL (e.g., https://fider-feedback.vercel.app)
2. In Vercel dashboard, go to your project settings
3. Update the BASE_URL environment variable with this URL
4. Redeploy

## Step 5: Initial Setup

1. Visit your Vercel URL
2. Follow the setup wizard to create your first site
3. Create your admin account

## HIPAA Considerations

Important: Fider is not designed for HIPAA compliance out of the box. If handling PHI:

1. Use Supabase Enterprise for database (to get a BAA)
2. Implement additional encryption
3. Configure proper access controls
4. Set up audit logging
5. Consider custom development for a more compliant solution

## Future Development

This deployment can serve as an interim solution while you explore building a custom Next.js + Supabase solution for better HIPAA compliance.

## Resources

- [Fider Documentation](https://getfider.com/docs)
- [Vercel Documentation](https://vercel.com/docs)
- [Docker Deployment Guide](https://getfider.com/docs/deploy-docker)