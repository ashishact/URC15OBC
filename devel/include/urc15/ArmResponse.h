/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/ashish/catkin_ws/src/urc15/srv/Arm.srv
 *
 */


#ifndef URC15_MESSAGE_ARMRESPONSE_H
#define URC15_MESSAGE_ARMRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace urc15
{
template <class ContainerAllocator>
struct ArmResponse_
{
  typedef ArmResponse_<ContainerAllocator> Type;

  ArmResponse_()
    : successful(0)  {
    }
  ArmResponse_(const ContainerAllocator& _alloc)
    : successful(0)  {
    }



   typedef uint8_t _successful_type;
  _successful_type successful;




  typedef boost::shared_ptr< ::urc15::ArmResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::urc15::ArmResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ArmResponse_

typedef ::urc15::ArmResponse_<std::allocator<void> > ArmResponse;

typedef boost::shared_ptr< ::urc15::ArmResponse > ArmResponsePtr;
typedef boost::shared_ptr< ::urc15::ArmResponse const> ArmResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::urc15::ArmResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::urc15::ArmResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace urc15

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::urc15::ArmResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::urc15::ArmResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::urc15::ArmResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::urc15::ArmResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::urc15::ArmResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::urc15::ArmResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::urc15::ArmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a8f4a17994a658adecd980a1dedfd6c";
  }

  static const char* value(const ::urc15::ArmResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a8f4a17994a658aULL;
  static const uint64_t static_value2 = 0xdecd980a1dedfd6cULL;
};

template<class ContainerAllocator>
struct DataType< ::urc15::ArmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "urc15/ArmResponse";
  }

  static const char* value(const ::urc15::ArmResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::urc15::ArmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 successful\n\
\n\
";
  }

  static const char* value(const ::urc15::ArmResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::urc15::ArmResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.successful);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ArmResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::urc15::ArmResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::urc15::ArmResponse_<ContainerAllocator>& v)
  {
    s << indent << "successful: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.successful);
  }
};

} // namespace message_operations
} // namespace ros

#endif // URC15_MESSAGE_ARMRESPONSE_H
