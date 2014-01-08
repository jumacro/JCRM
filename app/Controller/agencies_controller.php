var $helpers = array('Paginator', 'Html', 'Form', 'Javascript', 'Ajax'); 
var $components = array('Filter', 'RequestHandler', 'Session');

function autoComplete() {
    $this->set('agencies', $this->Agency->find('all', array(
    'conditions' => array(
            'Agency.agency LIKE' => $this->data['Agency']['agency'].'%'
    ),
    'fields' => array('agency'))));
$this->layout = 'ajax';
}