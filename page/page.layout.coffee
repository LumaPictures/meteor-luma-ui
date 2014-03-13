Template.pageLayout.rendered = ->

  # # Body Layout
  $("body").addClass("sidebar-wide").addClass("navbar-fixed")

  # # Data tables
  #     ==================================================

  #===== Default datatable =====//
  oTable = $(".datatable table").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"datatable-header\"fl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter:</span> _INPUT_"
      sLengthMenu: "<span>Show entries:</span> _MENU_"
      oPaginate:
        sFirst: "First"
        sLast: "Last"
        sNext: ">"
        sPrevious: "<"
  )

  #===== Table with selectable rows =====//
  oTable = $(".datatable-selectable table").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"datatable-header\"Tfl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter:</span> _INPUT_"
      sLengthMenu: "<span>Show:</span> _MENU_"
      oPaginate:
        sFirst: "First"
        sLast: "Last"
        sNext: ">"
        sPrevious: "<"

    oTableTools:
      sRowSelect: "multi"
      aButtons: [
        sExtends: "collection"
        sButtonText: "Tools <span class='caret'></span>"
        sButtonClass: "btn btn-primary"
        aButtons: [
          "select_all"
          "select_none"
        ]
      ]
  )

  #===== Table with media elements =====//
  oTable = $(".datatable-media table").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"datatable-header\"fl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter:</span> _INPUT_"
      sLengthMenu: "<span>Show:</span> _MENU_"
      oPaginate:
        sFirst: "First"
        sLast: "Last"
        sNext: ">"
        sPrevious: "<"

    aoColumnDefs: [
      bSortable: false
      aTargets: [
        0
        4
      ]
    ]
  )

  #===== Table with pager =====//
  oTable = $(".datatable-pager table").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "two_button"
    sDom: "<\"datatable-header\"fl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter:</span> _INPUT_"
      sLengthMenu: "<span>Show entries:</span> _MENU_"
      oPaginate:
        sNext: "Next →"
        sPrevious: "← Previous"
  )

  #===== Table with tools =====//
  oTable = $(".datatable-tools table").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"datatable-header\"Tfl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter:</span> _INPUT_"
      sLengthMenu: "<span>Show:</span> _MENU_"
      oPaginate:
        sFirst: "First"
        sLast: "Last"
        sNext: ">"
        sPrevious: "<"

    oTableTools:
      sRowSelect: "single"
      sSwfPath: "media/swf/copy_csv_xls_pdf.swf"
      aButtons: [
        {
          sExtends: "copy"
          sButtonText: "Copy"
          sButtonClass: "btn"
        }
        {
          sExtends: "print"
          sButtonText: "Print"
          sButtonClass: "btn"
        }
        {
          sExtends: "collection"
          sButtonText: "Save <span class='caret'></span>"
          sButtonClass: "btn btn-primary"
          aButtons: [
            "csv"
            "xls"
            "pdf"
          ]
        }
      ]
  )

  #===== Table with custom sorting columns =====//
  oTable = $(".datatable-custom-sort table").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"datatable-header\"fl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter:</span> _INPUT_"
      sLengthMenu: "<span>Show:</span> _MENU_"
      oPaginate:
        sFirst: "First"
        sLast: "Last"
        sNext: ">"
        sPrevious: "<"

    aoColumnDefs: [
      bSortable: false
      aTargets: [
        0
        1
      ]
    ]
  )

  #===== Table with invoices =====//
  oTable = $(".datatable-invoices table").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"datatable-header\"fl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter:</span> _INPUT_"
      sLengthMenu: "<span>Show:</span> _MENU_"
      oPaginate:
        sFirst: "First"
        sLast: "Last"
        sNext: ">"
        sPrevious: "<"

    aoColumnDefs: [
      bSortable: false
      aTargets: [
        1
        6
      ]
    ]
    aaSorting: [
      [
        0
        "desc"
      ]
    ]
  )

  #===== Table with tasks =====//
  oTable = $(".datatable-tasks table").dataTable(
    aaSorting: []
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"datatable-header\"fl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter tasks:</span> _INPUT_"
      sLengthMenu: "<span>Show tasks:</span> _MENU_"
      oPaginate:
        sFirst: "First"
        sLast: "Last"
        sNext: ">"
        sPrevious: "<"

    aoColumnDefs: [
      bSortable: false
      aTargets: [5]
    ]
  )

  #===== Datatable with tfoot column filters =====//
  asInitVals = new Array()
  oTable = $(".datatable-add-row table").dataTable(
    bJQueryUI: false
    bAutoWidth: false
    sPaginationType: "full_numbers"
    sDom: "<\"datatable-header\"fl><\"datatable-scroll\"t><\"datatable-footer\"ip>"
    oLanguage:
      sSearch: "<span>Filter all:</span> _INPUT_"
      sLengthMenu: "<span>Show entries:</span> _MENU_"
      oPaginate:
        sFirst: "First"
        sLast: "Last"
        sNext: ">"
        sPrevious: "<"
  )
  $(".dataTables_wrapper tfoot input").keyup ->
    oTable.fnFilter @value, $(".dataTables_wrapper tfoot input").index(this)


  #===== Adding placeholder to Datatable filter input field =====//
  $(".dataTables_filter input[type=text]").attr "placeholder", "Type to filter..."

  # # Select2 dropdowns
  #     ==================================================

  #===== Datatable select =====//
  $(".dataTables_length select").select2 minimumResultsForSearch: "-1"

  #===== Default select =====//
  $(".select").select2
    minimumResultsForSearch: "-1"
    width: 200


  #===== Liquid select =====//
  $(".select-liquid").select2
    minimumResultsForSearch: "-1"
    width: "off"


  #===== Full width select =====//
  $(".select-full").select2
    minimumResultsForSearch: "-1"
    width: "100%"


  #===== Select with filter input =====//
  $(".select-search").select2 width: 200

  #===== Multiple select =====//
  $(".select-multiple").select2 width: "100%"

  #===== Loading data select =====//
  $("#loading-data").select2
    placeholder: "Enter at least 1 character"
    allowClear: true
    minimumInputLength: 1
    query: (query) ->
      data =
        results: []
      i = undefined
      j = undefined
      s = undefined
      i = 1
      while i < 5
        s = ""
        j = 0
        while j < i
          s = s + query.term
          j++
        data.results.push
          id: query.term + i
          text: s

        i++
      query.callback data


  #===== Select with maximum =====//
  $(".maximum-select").select2
    maximumSelectionSize: 3
    width: "100%"


  #===== Allow clear results select =====//
  $(".clear-results").select2
    placeholder: "Select a State"
    allowClear: true
    width: 200


  #===== Select with minimum =====//
  $(".minimum-select").select2
    minimumInputLength: 2
    width: 200


  #===== Multiple select with minimum =====//
  $(".minimum-multiple-select").select2
    minimumInputLength: 2
    width: "100%"


  #===== Disabled select =====//
  $(".select-disabled").select2 "enable", false

  # # Form Validation
  #     ==================================================
  $(".validate").validate
    errorPlacement: (error, element) ->
      if element.parent().parent().attr("class") is "checker" or element.parent().parent().attr("class") is "choice"
        error.appendTo element.parent().parent().parent().parent().parent()
      else if element.parent().parent().attr("class") is "checkbox" or element.parent().parent().attr("class") is "radio"
        error.appendTo element.parent().parent().parent()
      else
        error.insertAfter element


    rules:
      minimum_characters:
        required: true
        minlength: 3

      maximum_characters:
        required: true
        maxlength: 6

      minimum_number:
        required: true
        min: 3

      maximum_number:
        required: true
        max: 6

      range:
        required: true
        range: [
          6
          16
        ]

      email_field:
        required: true
        email: true

      url_field:
        required: true
        url: true

      date_field:
        required: true
        date: true

      digits_only:
        required: true
        digits: true

      enter_password:
        required: true
        minlength: 5

      repeat_password:
        required: true
        minlength: 5
        equalTo: "#enter_password"

      custom_message: "required"
      group_styled:
        required: true
        minlength: 2

      group_unstyled:
        required: true
        minlength: 2

      agree: "required"

    messages:
      custom_message:
        required: "Bazinga! This message is editable"

      agree: "Please accept our policy"

    success: (label) ->
      label.text("Success!").addClass "valid"


  # # Bootstrap Multiselects
  #     ==================================================

  #===== Default multiselect =====//
  $(".multi-select").multiselect
    buttonClass: "btn btn-default"
    onChange: (element, checked) ->
      $.uniform.update()


  #===== Multiselect with colored button =====//
  $(".multi-select-color").multiselect
    buttonClass: "btn btn-info"
    onChange: (element, checked) ->
      $.uniform.update()


  #===== Multiselect with "Select All" option =====//
  $(".multi-select-all").multiselect
    buttonClass: "btn btn-default"
    includeSelectAllOption: true
    onChange: (element, checked) ->
      $.uniform.update()


  #===== onChange function =====//
  $(".multi-select-onchange").multiselect
    buttonClass: "btn btn-default"
    onChange: (element, checked) ->
      $.uniform.update()
      $.jGrowl "Change event invoked!",
        header: "Update"
        position: "center"
        life: 1500


  #===== Right aligned multiselect dropdown =====//
  $(".multi-select-right").multiselect
    buttonClass: "btn btn-default"
    dropRight: true
    onChange: (element, checked) ->
      $.uniform.update()


  #===== Search field select =====//
  $(".multi-select-search").multiselect
    buttonClass: "btn btn-link btn-lg btn-icon"
    dropRight: true
    buttonText: (options) ->
      if options.length is 0
        "<b class=\"caret\"></b>"
      else
        " <b class=\"caret\"></b>"

    onChange: (element, checked) ->
      $.uniform.update()


  # # jQuery UI Components
  #     ==================================================

  #===== jQuery UI Autocomplete =====//
  availableTags = [
    "ActionScript"
    "AppleScript"
    "Asp"
    "BASIC"
    "C"
    "C++"
    "Clojure"
    "COBOL"
    "ColdFusion"
    "Erlang"
    "Fortran"
    "Groovy"
    "Haskell"
    "Java"
    "JavaScript"
    "Lisp"
    "Perl"
    "PHP"
    "Python"
    "Ruby"
    "Scala"
    "Scheme"
  ]
  $(".autocomplete").autocomplete source: availableTags

  #===== Jquery UI sliders =====//
  $("#default-slider").slider()
  $("#increments-slider").slider
    value: 100
    min: 0
    max: 500
    step: 50
    slide: (event, ui) ->
      $("#donation-amount").val "$" + ui.value


  $("#donation-amount").val "$" + $("#increments-slider").slider("value")
  $("#range-slider, #range-slider1").slider
    range: true
    min: 0
    max: 500
    values: [
      75
      300
    ]
    slide: (event, ui) ->
      $("#price-amount, #price-amount1").val "$" + ui.values[0] + " - $" + ui.values[1]


  $("#price-amount, #price-amount1").val "$" + $("#range-slider, #range-slider1").slider("values",
    0) + " - $" + $("#range-slider, #range-slider1").slider("values", 1)
  $("#slider-range-min, #slider-range-min1").slider
    range: "min"
    value: 37
    min: 1
    max: 700
    slide: (event, ui) ->
      $("#min-amount, #min-amount1").val "$" + ui.value


  $("#min-amount, #min-amount1").val "$" + $("#slider-range-min, #slider-range-min1").slider("value")
  $("#slider-range-max, #slider-range-max1").slider
    range: "max"
    min: 1
    max: 10
    value: 2
    slide: (event, ui) ->
      $("#max-amount, #max-amount1").val ui.value


  $("#max-amount, #max-amount1").val $("#slider-range-max, #slider-range-max1").slider("value")

  #===== Spinner options =====//
  $("#spinner-default").spinner()
  $("#spinner-decimal").spinner
    step: 0.01
    numberFormat: "n"

  $("#culture").change ->
    current = $("#spinner-decimal").spinner("value")
    Globalize.culture $(this).val()
    $("#spinner-decimal").spinner "value", current


  $("#currency").change ->
    $("#spinner-currency").spinner "option", "culture", $(this).val()


  $("#spinner-currency").spinner
    min: 5
    max: 2500
    step: 25
    start: 1000
    numberFormat: "C"

  $("#spinner-overflow").spinner spin: (event, ui) ->
    if ui.value > 10
      $(this).spinner "value", -10
      false
    else if ui.value < -10
      $(this).spinner "value", 10
      false

  $.widget "ui.timespinner", $.ui.spinner,
    options:
      # seconds
      step: 60 * 1000
      # hours
      page: 60

    _parse: (value) ->
      if typeof value is "string"
        # already a timestamp
        return Number(value)  if Number(value) is value
        return +Globalize.parseDate(value)
      value

    _format: (value) ->
      Globalize.format new Date(value), "t"

  $("#spinner-time").timespinner()
  $("#culture-time").change ->
    current = $("#spinner-time").timespinner("value")
    Globalize.culture $(this).val()
    $("#spinner-time").timespinner "value", current


  #===== jQuery UI Datepicker =====//
  $(".datepicker").datepicker showOtherMonths: true
  $(".datepicker-inline").datepicker showOtherMonths: true
  $(".datepicker-multiple").datepicker
    showOtherMonths: true
    numberOfMonths: 3

  $(".datepicker-trigger").datepicker
    showOn: "button"
    buttonImage: "images/interface/datepicker_trigger.png"
    buttonImageOnly: true
    showOtherMonths: true

  $(".from-date").datepicker
    defaultDate: "+1w"
    numberOfMonths: 3
    showOtherMonths: true
    onClose: (selectedDate) ->
      $(".to-date").datepicker "option", "minDate", selectedDate


  $(".to-date").datepicker
    defaultDate: "+1w"
    numberOfMonths: 3
    showOtherMonths: true
    onClose: (selectedDate) ->
      $(".from-date").datepicker "option", "maxDate", selectedDate


  $(".datepicker-restricted").datepicker
    minDate: -20
    maxDate: "+1M +10D"
    showOtherMonths: true

  # # Bootstrap Plugins
  #     ==================================================

  #===== Tooltip =====//
  $(".tip").tooltip()

  #===== Popover =====//
  $("[data-toggle=popover]").popover().click (e) ->
    e.preventDefault()


  #===== Loading button =====//
  $(".btn-loading").click ->
    btn = $(this)
    btn.button "loading"
    setTimeout (->
      btn.button "reset"
    ), 3000


  #===== Add fadeIn animation to dropdown =====//
  $(".dropdown, .btn-group").on "show.bs.dropdown", (e) ->
    $(this).find(".dropdown-menu").first().stop(true, true).fadeIn 100


  #===== Add fadeOut animation to dropdown =====//
  $(".dropdown, .btn-group").on "hide.bs.dropdown", (e) ->
    $(this).find(".dropdown-menu").first().stop(true, true).fadeOut 100


  #===== Prevent dropdown from closing on click =====//
  $(".popup").click (e) ->
    e.stopPropagation()

  # # Form Related Plugins
  #     ==================================================

  #===== Pluploader (multiple file uploader) =====//
  $(".multiple-uploader").pluploadQueue
    runtimes: "html5, html4"
    url: "../upload.php"
    chunk_size: "1mb"
    unique_names: true
    filters:
      max_file_size: "10mb"
      mime_types: [
        {
          title: "Image files"
          extensions: "jpg,gif,png"
        }
        {
          title: "Zip files"
          extensions: "zip"
        }
      ]
    resize:
      width: 320
      height: 240
      quality: 90


  #===== WYSIWYG editor =====//
  $(".editor").wysihtml5 stylesheets: "css/wysihtml5/wysiwyg-color.css"

  #===== Elastic textarea =====//
  $(".elastic").autosize()

  #===== Dual select boxes =====//
  $.configureBoxes()

  #===== Input limiter =====//
  $(".limited").inputlimiter
    limit: 100
    boxId: "limit-text"
    boxAttach: false


  #===== Tags Input =====//
  $(".tags").tagsInput width: "100%"
  $(".tags-autocomplete").tagsInput
    width: "100%"
    autocomplete_url: "tags_autocomplete.html"


  #===== Form elements styling =====//
  $(".styled, .multiselect-container input").uniform
    radioClass: "choice"
    selectAutoWidth: false


  # # Interface Related Plugins
  #     ==================================================

  #===== Sparkline charts =====//
  $(".bar-danger").sparkline "html",
    type: "bar"
    barColor: "#D65C4F"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"

  $(".bar-success").sparkline "html",
    type: "bar"
    barColor: "#65B688"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"

  $(".bar-primary").sparkline "html",
    type: "bar"
    barColor: "#32434D"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"

  $(".bar-warning").sparkline "html",
    type: "bar"
    barColor: "#EE8366"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"

  $(".bar-info").sparkline "html",
    type: "bar"
    barColor: "#3CA2BB"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"

  $(".bar-default").sparkline "html",
    type: "bar"
    barColor: "#ffffff"
    height: "35px"
    barWidth: "5px"
    barSpacing: "2px"
    zeroAxis: "false"


  # Activate hidden Sparkline on tab show
  $("a[data-toggle=\"tab\"]").on "shown.bs.tab", ->
    $.sparkline_display_visible()


  # Activate hidden Sparkline
  $(".collapse").on "shown.bs.collapse", ->
    $.sparkline_display_visible()


  #===== Fancy box (lightbox plugin) =====//
  $(".lightbox").fancybox padding: 1

  #===== DateRangePicker plugin =====//
  $("#reportrange").daterangepicker
    startDate: moment().subtract("days", 29)
    endDate: moment()
    minDate: "01/01/2012"
    maxDate: "12/31/2014"
    dateLimit:
      days: 60

    ranges:
      Today: [
        moment()
        moment()
      ]
      Yesterday: [
        moment().subtract("days", 1)
        moment().subtract("days", 1)
      ]
      "Last 7 Days": [
        moment().subtract("days", 6)
        moment()
      ]
      "This Month": [
        moment().startOf("month")
        moment().endOf("month")
      ]
      "Last Month": [
        moment().subtract("month", 1).startOf("month")
        moment().subtract("month", 1).endOf("month")
      ]

    opens: "left"
    buttonClasses: ["btn"]
    applyClass: "btn-small btn-info btn-block"
    cancelClass: "btn-small btn-default btn-block"
    format: "MM/DD/YYYY"
    separator: " to "
    locale:
      applyLabel: "Submit"
      fromLabel: "From"
      toLabel: "To"
      customRangeLabel: "Custom Range"
      daysOfWeek: [
        "Su"
        "Mo"
        "Tu"
        "We"
        "Th"
        "Fr"
        "Sa"
      ]
      monthNames: [
        "January"
        "February"
        "March"
        "April"
        "May"
        "June"
        "July"
        "August"
        "September"
        "October"
        "November"
        "December"
      ]
      firstDay: 1
  , (start, end) ->
    $.jGrowl "A date range was changed",
      header: "Update"
      position: "center"
      life: 1500

    $("#reportrange .date-range").html start.format("<i>D</i> <b><i>MMM</i> <i>YYYY</i></b>") + "<em> - </em>" + end.format("<i>D</i> <b><i>MMM</i> <i>YYYY</i></b>")


  # Custom date display layout
  $("#reportrange .date-range").html moment().subtract("days",
    29).format("<i>D</i> <b><i>MMM</i> <i>YYYY</i></b>") + "<em> - </em>" + moment().format("<i>D</i> <b><i>MMM</i> <i>YYYY</i></b>")
  $("#reportrange").on "show", (ev, picker) ->
    $(".range").addClass "range-shown"


  $("#reportrange").on "hide", (ev, picker) ->
    $(".range").removeClass "range-shown"


  #===== Bootstrap switches =====//
  $(".switch").bootstrapSwitch()

  #===== Fullcalendar =====//
  date = new Date()
  d = date.getDate()
  m = date.getMonth()
  y = date.getFullYear()
  calendar = $(".fullcalendar").fullCalendar(
    header:
      left: "prev,next,today"
      center: "title"
      right: "month,agendaWeek,agendaDay"

    selectable: true
    selectHelper: true
    select: (start, end, allDay) ->
      title = prompt("Event Title:")
      if title
        calendar.fullCalendar "renderEvent",
          title: title
          start: start
          end: end
          allDay: allDay
        , true # make the event "stick"
      calendar.fullCalendar "unselect"
    editable: true
    events: [
      {
        title: "All Day Event"
        start: new Date(y, m, 1)
      }
      {
        title: "Long Event"
        start: new Date(y, m, d - 5)
        end: new Date(y, m, d - 2)
      }
      {
        id: 999
        title: "Repeating Event"
        start: new Date(y, m, d - 3, 16, 0)
        allDay: false
      }
      {
        id: 999
        title: "Repeating Event"
        start: new Date(y, m, d + 4, 16, 0)
        allDay: false
      }
      {
        title: "Meeting"
        start: new Date(y, m, d, 10, 30)
        allDay: false
      }
      {
        title: "Lunch"
        start: new Date(y, m, d, 12, 0)
        end: new Date(y, m, d, 14, 0)
        allDay: false
      }
      {
        title: "Birthday Party"
        start: new Date(y, m, d + 1, 19, 0)
        end: new Date(y, m, d + 1, 22, 30)
        allDay: false
      }
    ]
  )

  # Render hidden calendar on tab show
  $("a[data-toggle=\"tab\"]").on "shown.bs.tab", ->
    $(".fullcalendar").fullCalendar "render"


  #===== Code prettifier =====//
  window.prettyPrint and prettyPrint()

  #===== Time pickers =====//
  $("#defaultValueExample, #time").timepicker scrollDefaultNow: true
  $("#durationExample").timepicker
    minTime: "2:00pm"
    maxTime: "11:30pm"
    showDuration: true

  $("#onselectExample").timepicker()
  $("#onselectExample").on "changeTime", ->
    $("#onselectTarget").text $(this).val()


  $("#timeformatExample1, #timeformatExample3").timepicker timeFormat: "H:i:s"
  $("#timeformatExample2, #timeformatExample4").timepicker timeFormat: "h:i A"

  #===== Color picker =====//
  $(".color-picker").colorpicker()
  $(".color-picker-hex").colorpicker format: "hex"

  # Change navbar background color
  topStyle = $(".navbar-inverse")[0].style
  $(".change-navbar-color").colorpicker().on "changeColor", (ev) ->
    topStyle.background = ev.color.toHex()


  #===== jGrowl notifications defaults =====//
  $.jGrowl.defaults.closer = false
  $.jGrowl.defaults.easing = "easeInOutCirc"

  #===== Collapsible navigation =====//
  $(".sidebar-wide li:not(.disabled) .expand, .sidebar-narrow .navigation > li ul .expand").collapsible
    defaultOpen: "second-level,third-level"
    cssOpen: "level-opened"
    cssClose: "level-closed"
    speed: 150


  # # Default Layout Options
  #     ==================================================

  #===== Panel Options (collapsing, closing) =====//

  # Collapsing
  $("[data-panel=collapse]").click (e) ->
    e.preventDefault()
    $target = $(this).parent().parent().next("div")
    if $target.is(":visible")
      $(this).children("i").removeClass "icon-arrow-up9"
      $(this).children("i").addClass "icon-arrow-down9"
    else
      $(this).children("i").removeClass "icon-arrow-down9"
      $(this).children("i").addClass "icon-arrow-up9"
    $target.slideToggle 200


  # Closing
  $("[data-panel=close]").click (e) ->
    e.preventDefault()
    $panelContent = $(this).parent().parent().parent()
    $panelContent.slideUp(200).remove 200


  #===== Showing spinner animation demo =====//
  $(".run-first").click ->
    $("body").append "<div class=\"overlay\"><div class=\"opacity\"></div><i class=\"icon-spinner2 spin\"></i></div>"
    $(".overlay").fadeIn 150
    window.setTimeout (->
      $(".overlay").fadeOut 150, ->
        $(this).remove()
    ), 5000


  $(".run-second").click ->
    $("body").append "<div class=\"overlay\"><div class=\"opacity\"></div><i class=\"icon-spinner3 spin\"></i></div>"
    $(".overlay").fadeIn 150
    window.setTimeout (->
      $(".overlay").fadeOut 150, ->
        $(this).remove()
    ), 5000


  $(".run-third").click ->
    $("body").append "<div class=\"overlay\"><div class=\"opacity\"></div><i class=\"icon-spinner7 spin\"></i></div>"
    $(".overlay").fadeIn 150
    window.setTimeout (->
      $(".overlay").fadeOut 150, ->
        $(this).remove()
    ), 5000


  #===== Hiding sidebar =====//
  $(".sidebar-toggle").click ->
    $(".page-container").toggleClass "sidebar-hidden"


  #===== Disabling main navigation links =====//
  $(".navigation li.disabled a, .navbar-nav > .disabled > a").click (e) ->
    e.preventDefault()


  #===== Toggling active class in accordion groups =====//
  $(".panel-trigger").click (e) ->
    e.preventDefault()
    $(this).toggleClass "active"


