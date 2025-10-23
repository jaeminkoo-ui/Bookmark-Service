-- Supabase schema for MyBookmarkHub
-- Please refer to the provided supabase_schema.sql file for the full definitions
-- Create tables: users, categories, bookmarks, tags, bookmark_tags, visit_logs, user_settings

-- Example table definition
CREATE TABLE IF NOT EXISTS categories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users (id),
  name text NOT NULL,
  sort_order integer NOT NULL DEFAULT 0,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

-- Add other tables and RLS policies accordingly.
