$(document).on("fields_added.nested_form_fields", function(event, param) {
    addAceToText();
});

function addAceToText(){
    $(".editor").each(function(index) {
        var editor, textarea;
        editor = ace.edit(this);
        editor.getSession().setMode("ace/mode/ruby");
        textarea = $(this).prev();
        editor.getSession().setValue(textarea.val());
        return editor.getSession().on("change", function() {
            return textarea.val(editor.getSession().getValue());
        });
    });
}
function addAceToTextFileList(editor) {
    $("." + editor).each(function (index) {
        var editor
        editor = ace.edit(this);
        editor.container.style.opacity = 0.7;
        editor.setReadOnly(true);
        editor.getSession().setMode("ace/mode/ruby");
    });
}