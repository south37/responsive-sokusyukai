EVENT =
  OPEN_MENUES:  'open-menues'
  CLOSE_MENUES: 'close-menues'


class Header

  constructor: (@$el) ->
    new HeaderMenues @$el.find(HeaderMenues.selector)
    new HeaderMenuToggleIcon @$el.find(HeaderMenuToggleIcon.selector)


class HeaderMenues

  CLOSE_ICON_SELECTOR = '.header-menue-close'

  @selector = '.header-menues'

  constructor: (@$el) ->
    @$closeIcon = @$el.find(CLOSE_ICON_SELECTOR)
    @$window = $ window
    @addEventListener()

  addEventListener: ->
    @$window.on EVENT.OPEN_MENUES, =>
      @$el.show()

    @$closeIcon.on 'click', =>
      @$el.hide()


class HeaderMenuToggleIcon

  @selector = '.header-menu-toggle-icon'

  constructor: (@$el) ->
    @$window = $ window
    @addEventListener()

  addEventListener: ->
    @$el.on 'click', =>
      @$window.trigger EVENT.OPEN_MENUES


new Header $('#header')
