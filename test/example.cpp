//********** Copyright © 2025 Solomon Xie, Jonathon Bell. All rights reserved.
//*
//*
//*  Version : $Header:$
//*
//*
//*  Purpose :
//*
//*
//****************************************************************************

#include <doctest/doctest.h>                             // For doctest

#include "example.hpp"                                   // For example

//****************************************************************************

TEST_CASE("example")
{
  CHECK(example() == 3);
}

//****************************************************************************
