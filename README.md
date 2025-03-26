# Fider on Vercel - Feature & Bug Request Tracker

This repository contains starter files for deploying Fider, an open-source feedback platform, to Vercel.

## What is Fider?

Fider is an open-source platform for collecting and prioritizing product feedback without requiring GitHub accounts. It allows you to:

- Collect user suggestions and bug reports
- Let users vote on features they want
- Track the status of each request
- Communicate progress to users

## Deployment Instructions

For complete step-by-step deployment instructions, please see [INSTRUCTIONS.md](INSTRUCTIONS.md)

## Key Steps

1. Set up a PostgreSQL database (Supabase or Heroku)
2. Deploy to Vercel with the proper environment variables
3. Complete the initial setup wizard

## HIPAA Considerations

Note that Fider is not HIPAA-compliant out of the box. If you need HIPAA compliance, consider:

1. Using this as an interim solution
2. Working toward a custom Next.js + Supabase solution
3. Implementing additional security measures

## Resources

- [Fider Documentation](https://fider.io/docs)
- [Vercel Documentation](https://vercel.com/docs)