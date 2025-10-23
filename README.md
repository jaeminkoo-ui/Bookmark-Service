# MyBookmarkHub  

MyBookmarkHub is a personal bookmark management service built with Next.js 14 (App Router) and TypeScript. It uses Supabase for authentication (Google Sign-In) and Postgres storage with row-level security. Tailwind CSS with shadcn/ui and Radix UI provide a modern UI framework, while dnd-kit enables drag-and-drop sorting. Additional libraries include Recharts for sparkline charts, open-graph-scraper for metadata extraction, and next-themes for dark mode.  

## Features  

- Google Authentication via Supabase.  
- Categories with user-defined names and drag-and-drop ordering.  
- Bookmark cards showing title, favicon, last visited time, weekly and monthly visit counts, editable note, tags, and a sparkline of visits.  
- Full‑text search across titles, notes and metadata; filter by category or tags.  
- Quick-add bookmarks by pasting a URL; metadata is fetched server-side.  
- Settings page with theme selection (system / light / dark).  
- Export bookmarks in a category to JSON or CSV.  
- API routes for fetching bookmark metadata and tracking visits.  

## Getting Started  

### Prerequisites  

- Node.js 18+  
- A Supabase project with Google OAuth enabled.  

### Setup  

1. Clone the repository:  

```
git clone https://github.com/jaeminkoo-ui/Bookmark-Service.git  
cd Bookmark-Service
```  

2. Install dependencies:  

```
pnpm install  
# or  
npm install
```  

3. Copy `.env.example` to `.env.local` and fill in your Supabase URL and anon key:  

```
NEXT_PUBLIC_SUPABASE_URL=...  
NEXT_PUBLIC_SUPABASE_ANON_KEY=...  
```  

4. Run the development server:  

```
npm run dev
```  

Then open `http://localhost:3000` in your browser.  

### Database  

The Supabase schema is defined in `database/schema.sql`. You can apply these migrations to your Supabase project using the Supabase CLI:  

```
supabase db push
```  

This will create tables `users`, `categories`, `bookmarks`, `tags`, `bookmark_tags`, `visit_logs` and `user_settings` with row‑level security policies so each user can only access their own data.  

### Deployment  

You can deploy MyBookmarkHub to Vercel. Configure the `NEXT_PUBLIC_SUPABASE_URL` and `NEXT_PUBLIC_SUPABASE_ANON_KEY` environment variables in the Vercel project settings. See `vercel.json` for recommended configuration.  

## License  

This project is provided for demonstration purposes. See `LICENSE` for details.
