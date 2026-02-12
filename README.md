# Folio

**One-Link Pitch Room** - A shareable pitch room for showcasing your projects, portfolio, and ideas all in one place.

## Overview

Folio is a Rails 8 application that allows you to create beautiful, shareable pitch rooms. Each room gets a unique URL where you can curate links, documents, and other content to present your work, ideas, or portfolio to clients, investors, or collaborators.

## Features

- 🎯 **Unique Shareable Links** - Each room gets a memorable token-based URL
- 📦 **Polymorphic Content** - Add links, documents, and more to your pitch rooms
- 🔄 **Drag & Drop Ordering** - Organize your content with acts_as_list
- 👀 **Analytics** - Track who views your pitch rooms
- ⚡ **Modern Stack** - Rails 8, Hotwire, Tailwind CSS

## Tech Stack

- **Framework:** Ruby on Rails 8.1
- **Database:** SQLite3
- **Frontend:** Hotwire (Turbo + Stimulus), Tailwind CSS
- **Assets:** Importmap
- **Features:** ActiveStorage for file uploads, acts_as_list for ordering

## Core Models

- **Room** - The main pitch room with a unique token and optional slug
- **Item** - Polymorphic container for different content types
- **Link** - URL-based content (websites, demos, etc.)
- **Document** - File uploads (PDFs, presentations, etc.)
- **Viewer** - Analytics tracking for room visits

## Getting Started

### Prerequisites

- Ruby 3.4.0
- SQLite3
- Node.js (for Tailwind CSS)

### Installation

```bash
# Clone the repository
git clone https://github.com/sladerose/Folio.git
cd Folio

# Install dependencies
bundle install

# Setup the database
rails db:create db:migrate

# Start the development server
bin/dev
```

Visit `http://localhost:3000` to see the application.

## Development

```bash
# Run the test suite
rails test

# Run linters
rubocop
brakeman

# Check for security vulnerabilities
bundle audit
```

## License

This project is available as open source under the terms of the MIT License.
