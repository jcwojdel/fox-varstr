define(`TOHW_m_dom_imports',`divert(1)$1'`divert')dnl
define(`TOHW_m_dom_publics',`divert(2)$1'`divert')dnl
define(`TOHW_m_dom_contents',`divert(3)$1'`divert')dnl
dnl
include(`m_dom_types.m4')dnl
include(`m_dom_node.m4')dnl
include(`m_dom_nodelist.m4')dnl
include(`m_dom_namednodemap.m4')dnl
include(`m_dom_implementation.m4')dnl
include(`m_dom_document.m4')`'dnl
include(`m_dom_document_type.m4')dnl
include(`m_dom_element.m4')dnl
include(`m_dom_attribute.m4')dnl
include(`m_dom_character_data.m4')dnl
include(`m_dom_entity.m4')dnl
include(`m_dom_processing_instruction.m4')dnl
include(`m_dom_text.m4')dnl
include(`m_dom_common.m4')dnl
dnl
! ATTENTION
! THIS FILE IS AUTOGENERATED
! DO NOT EDIT DIRECTLY
! EDIT FILES dom/m_dom_***.m4
!
module m_dom_dom
dnl
undivert(1)
dnl
  implicit none
  private
dnl
undivert(2)
dnl
contains
dnl
undivert(3)
dnl
end module m_dom_dom
