// Generated by gencpp from file vrpn_client_gapter/AddTwoInts.msg
// DO NOT EDIT!


#ifndef VRPN_CLIENT_GAPTER_MESSAGE_ADDTWOINTS_H
#define VRPN_CLIENT_GAPTER_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <vrpn_client_gapter/AddTwoIntsRequest.h>
#include <vrpn_client_gapter/AddTwoIntsResponse.h>


namespace vrpn_client_gapter
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace vrpn_client_gapter


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::vrpn_client_gapter::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::vrpn_client_gapter::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::vrpn_client_gapter::AddTwoInts > {
  static const char* value()
  {
    return "vrpn_client_gapter/AddTwoInts";
  }

  static const char* value(const ::vrpn_client_gapter::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::vrpn_client_gapter::AddTwoIntsRequest> should match 
// service_traits::MD5Sum< ::vrpn_client_gapter::AddTwoInts > 
template<>
struct MD5Sum< ::vrpn_client_gapter::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::vrpn_client_gapter::AddTwoInts >::value();
  }
  static const char* value(const ::vrpn_client_gapter::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::vrpn_client_gapter::AddTwoIntsRequest> should match 
// service_traits::DataType< ::vrpn_client_gapter::AddTwoInts > 
template<>
struct DataType< ::vrpn_client_gapter::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::vrpn_client_gapter::AddTwoInts >::value();
  }
  static const char* value(const ::vrpn_client_gapter::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::vrpn_client_gapter::AddTwoIntsResponse> should match 
// service_traits::MD5Sum< ::vrpn_client_gapter::AddTwoInts > 
template<>
struct MD5Sum< ::vrpn_client_gapter::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::vrpn_client_gapter::AddTwoInts >::value();
  }
  static const char* value(const ::vrpn_client_gapter::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::vrpn_client_gapter::AddTwoIntsResponse> should match 
// service_traits::DataType< ::vrpn_client_gapter::AddTwoInts > 
template<>
struct DataType< ::vrpn_client_gapter::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::vrpn_client_gapter::AddTwoInts >::value();
  }
  static const char* value(const ::vrpn_client_gapter::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VRPN_CLIENT_GAPTER_MESSAGE_ADDTWOINTS_H
