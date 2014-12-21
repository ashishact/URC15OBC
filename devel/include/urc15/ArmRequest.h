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


#ifndef URC15_MESSAGE_ARMREQUEST_H
#define URC15_MESSAGE_ARMREQUEST_H


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
struct ArmRequest_
{
  typedef ArmRequest_<ContainerAllocator> Type;

  ArmRequest_()
    : algorithm(0)  {
    }
  ArmRequest_(const ContainerAllocator& _alloc)
    : algorithm(0)  {
    }



   typedef uint8_t _algorithm_type;
  _algorithm_type algorithm;




  typedef boost::shared_ptr< ::urc15::ArmRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::urc15::ArmRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ArmRequest_

typedef ::urc15::ArmRequest_<std::allocator<void> > ArmRequest;

typedef boost::shared_ptr< ::urc15::ArmRequest > ArmRequestPtr;
typedef boost::shared_ptr< ::urc15::ArmRequest const> ArmRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::urc15::ArmRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::urc15::ArmRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace urc15

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'urc15': ['/home/ashish/catkin_ws/src/urc15/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::urc15::ArmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::urc15::ArmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::urc15::ArmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::urc15::ArmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::urc15::ArmRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::urc15::ArmRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::urc15::ArmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a8d789f1c6d9b3dd1b52e4a99f8458cc";
  }

  static const char* value(const ::urc15::ArmRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa8d789f1c6d9b3ddULL;
  static const uint64_t static_value2 = 0x1b52e4a99f8458ccULL;
};

template<class ContainerAllocator>
struct DataType< ::urc15::ArmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "urc15/ArmRequest";
  }

  static const char* value(const ::urc15::ArmRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::urc15::ArmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 algorithm\n\
";
  }

  static const char* value(const ::urc15::ArmRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::urc15::ArmRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.algorithm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ArmRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::urc15::ArmRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::urc15::ArmRequest_<ContainerAllocator>& v)
  {
    s << indent << "algorithm: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.algorithm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // URC15_MESSAGE_ARMREQUEST_H
