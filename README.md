# Project Brief: One-Link Pitch Room

## Overview
**One-Link Pitch Room** is a tool designed to solve "information scatter" by allowing users to curate and share a professional, single-page presentation of documents and links. It aligns with the "37signals philosophy": simple, high-utility, CRUD-based, and minimal JavaScript.

## Core Value Proposition
> "I upload a few things, I get a private link, and I see when they look at it."

## Technical Stack
- **Backend**: Ruby on Rails 7+
- **Frontend**: Hotwire (Turbo & Stimulus)
- **Database**: SQLite / PostgreSQL (Default Rails)
- **Styling**: TBD (likely Tailwind or simple CSS per user preference, but sticking to "Basecamp" often implies custom or utility-first)
- **Philosophy**: Minimal heavy client-side logic. "The Basecamp Way".

## MVP Features

### 1. The Room Creator
- **Function**: A simple form to create a new "Room" (e.g., "Proposal for Acme Inc").
- **Output**: A new dashboard view for the creator to manage the room.

### 2. The Content Stack
- **Documents**: Upload PDFs (Proposals, Contracts).
- **Links**: Embed or list external URLs (Calendly, Loom, Figma, etc.).
- **Mechanism**: Turbo Streams for instant updates without page reloads.

### 3. The Public View ("Live View")
- **Access**: A read-only, professional landing page for the recipient.
- **Security**: Accessed via **Unique Tokenized URLs** (e.g., `app.com/p/8j3f-92kd-kdk8`) rather than user accounts for recipients.

### 4. The "Ping" (Analytics)
- **Function**: Simple tracking of when the room was accessed.
- **Feedback**: A "Last Viewed" timestamp or email notification for the sender.

## Architecture Highlights
- **No Client Auth**: Recipients do not log in.
- **Sender Auth**: Standard Devise or manually built auth for the room creator.
- **File Storage**: ActiveStorage for PDF uploads.
