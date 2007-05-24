! This file is AUTOGENERATED!!!!
! Do not edit this file edit m_dom_types.m4 and regenerate.
!
module m_dom_types

  implicit none
  private

  integer, parameter ::     ELEMENT_NODE                   = 1
  integer, parameter ::     ATTRIBUTE_NODE                 = 2
  integer, parameter ::     TEXT_NODE                      = 3
  integer, parameter ::     CDATA_SECTION_NODE             = 4
  integer, parameter ::     ENTITY_REFERENCE_NODE          = 5
  integer, parameter ::     ENTITY_NODE                    = 6
  integer, parameter ::     PROCESSING_INSTRUCTION_NODE    = 7
  integer, parameter ::     COMMENT_NODE                   = 8
  integer, parameter ::     DOCUMENT_NODE                  = 9
  integer, parameter ::     DOCUMENT_TYPE_NODE             = 10
  integer, parameter ::     DOCUMENT_FRAGMENT_NODE         = 11
  integer, parameter ::     NOTATION_NODE                  = 12


  type DOMImplementation
    character, pointer :: id(:)
  end type DOMImplementation

  type NodeList
    type(NamedNode), pointer :: head => null()
    integer :: length
  end type NodeList

  type NamedNode
    type(Node), pointer :: this => null()
    type(NamedNode), pointer :: next => null()
  end type NamedNode 

  type NamedNodeMap
    type(NamedNode), pointer :: head => null()
    type(NamedNode), pointer :: tail => null()
    integer :: length
  end type NamedNodeMap

  type Node
    character, pointer, dimension(:)         :: nodeName    
    character, pointer, dimension(:)         :: nodeValue   
    integer              :: nc              = 0 
    integer              :: nodeType        = 0
    type(Node), pointer :: parentNode      => null()
    type(Node), pointer :: firstChild      => null()
    type(Node), pointer :: lastChild       => null()
    type(Node), pointer :: previousSibling => null()
    type(Node), pointer :: nextSibling     => null()
    type(Node), pointer :: ownerDocument   => null()
    type(NamedNodeMap), pointer :: attributes => null()
    type(NodeList), pointer :: childNodes  => null()  ! New
    ! Introduced in DOM Level 2:
    character, pointer, dimension(:) :: namespaceURI 
    character, pointer, dimension(:) :: prefix 
    character, pointer, dimension(:) :: localName
    type(Node), pointer :: doctype => null()
    type(DOMImplementation), pointer :: implementation
    type(Node), pointer :: documentElement
    character, pointer :: name(:) => null()
    logical :: specified
    character, pointer :: value => null()
    ! Introduced in DOM Level 2
    type(Node), pointer :: ownerElement => null()
    character, pointer :: tagName(:) => null()
    type(namedNodeMap), pointer :: entities
    type(namedNodeMap), pointer :: notations
    character, pointer :: publicId(:) => null()
    character, pointer :: systemId(:) => null()
    character, pointer :: internalSubset(:) => null()
    character, pointer :: notationName(:) => null()
    character, pointer :: target(:) => null()
    character, pointer :: data(:) => null()
  end type Node

  public :: DOMImplementation
  public :: Node

  public :: NamedNode
  public :: NodeList
  public :: NamedNodeMap

end module m_dom_types
