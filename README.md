# Quotable API Wrapper

This API wrapper is intended for educational purposes only!.

## API Reference <!-- omit in toc -->

- [Get random quote](#get-random-quote)
- [List Quotes](#list-quotes)
- [Get Quote By ID](#get-quote-by-id)

## Get random quote

```HTTP
GET /random
```

Returns a single random quote from the database

**Response**

```ts
{
  _id: string
  // The quotation text
  content: string
  // The full name of the author
  author: string
  // The `slug` of the quote author
  authorSlug: string
  // The length of quote (number of characters)
  length: number
  // An array of tag names for this quote
  tags: string[]
}
```

**Examples**

Random Quote [try in browser](https://api.quotable.io/random)

```HTTP
GET /random
```

Random Quote with tags "technology" **`AND`** "famous-quotes" [try in browser](https://api.quotable.io/random?tags=technology,famous-quotes)


<br>

## List Quotes

```HTTP
GET /quotes
```

Get all quotes matching a given query. By default, this will return a paginated list of all quotes, sorted by `_id`.

**Response**

```ts
{
  // The number of quotes returned in this response
  count: number
  // The total number of quotes matching this query
  totalCount: number
  // The current page number
  page: number
  // The total number of pages matching this request
  totalPages: number
  // The 1-based index of the last result included in the current response.
  lastItemIndex: number
  // The array of quotes
  results: Array<{
    _id: string
    // The quotation text
    content: string
    // The full name of the author
    author: string
    // The `slug` of the quote author
    authorSlug: string
    // The length of quote (number of characters)
    length: number
    // An array of tag names for this quote
    tags: string[]
  }>
}
```

**Examples**

Get the first page of quotes, with 20 results per page [try in browser](https://quotable.io/quotes?page=1)

<br>

## Get Quote By ID

```HTTP
GET /quotes/:id
```

Get a quote by its ID

**Response**

```ts
{
  _id: string
  // The quotation text
  content: string
  // The full name of the author
  author: string
  // The length of quote (number of characters)
  length: number
  // An array of tag names for this quote
  tags: string[]
}
```

<br>
