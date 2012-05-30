Helper = {}

Helper.model_response = 
  _links:
    self:
      href: '/example'
      eg:
        href: '/boo'
  _embedded:
    foo:
      _links: { self: { href: '/embedded' } }
      foo_prop: 'foo_val'
  prop: 'val'
  other_prop: 'other_val'

Helper.updated_model_response =
  _links:
    self:
      href: '/example'
      eg:
        href: '/test'
      xyz:
        href: '/bla'
  _embedded:
    foo:
      _links: { self: { href: '/embedded' } }
      foo_prop: 'foo_val'
  prop: 'val'
  other_prop: 'other_val'
  additional: 'add'

Helper.collection_response =
  _links:
    self:
      href: '/example'
      eg:
        href: '/boo'
  _embedded:
    items:[
      {
        _links: { self: { href: '/item1' } }
        _embedded: { emb: { _links: { self: { href: '/foo' } } } }
        item_prop: 'foo_val'
      }
      {
        _links: { self: { href: '/item2' } }
        item_prop: 'foo_val'
      }
      {
        _links: { self: { href: '/item3' } }
        item_prop: 'foo_val'
      }
    ]
  prop: 'val'
  other_prop: 'other_val'

Helper.updated_collection_response =
  _links:
    self:
      href: '/example'
    eg:
      href: '/test'
    xyz:
      href: '/bla'
  _embedded:
    items:[
      {
        _links: { self: { href: '/item1' } }
        _embedded: { emb: { _links: { self: { href: '/foo' } } } }
        item_prop: 'foo_val'
      }
      {
        _links: { self: { href: '/item2' } }
        item_prop: 'foo_val'
      }
      {
        _links: { self: { href: '/item3' } }
        item_prop: 'foo_val'
      }
      {
        _links: { self: { href: '/item4' } }
        item_prop: 'foo_val'
      }
    ]
    embed2:
      _links:
        self:
          href: '/foo'
      x: 'y'
  prop: 'val'
  other_prop: 'other_val'
  additional: 'add'

window.Helper = Helper
