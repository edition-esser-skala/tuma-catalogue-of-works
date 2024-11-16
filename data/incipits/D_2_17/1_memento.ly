\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4
    d2 a'4 a
    b a8 g a4 d,8 d'
    d4 cis d c8 b
    a4 a r2
    R1
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4
    r2 a4 a8 a
    d4 e f e8 d
    e e e a f f g4
    c, r8 f e4. a8
    a4 g8 f g e f g
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4
    R1
    r2 d,4 d8 d
    a'4 a b a8 g
    a4 d d cis
    d d cis? d8 e
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4
    R1*2
    a2 d4 e
    f e8 d e a, a'4
    f e8 d e a f e
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4
    d2 a'4 a
    b a8 g a4 d,8 d'
    d4 cis d c8 b
    a2 r
    R1
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key d \minor \time 4/4
    r2 a
    d4 e f e8 d
    e4. a8 f4 \tweak Parentheses.font-size #2 \parenthesize g
    c, r8 f e4. a8~
    a4 g8 f g e f g
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key d \minor \time 4/4 \autoBeamOff
    d2^\tutti a'4 a
    b a8 g a4 d,8 d'
    d d cis cis d4 c8 b
    a4 a r2
    R1
  }
}

SopranoLyrics = \lyricmode {
  Me -- men -- to,
  Do -- mi -- ne, Da -- vid et
  o -- mnis man -- sue -- tu -- di -- nis
  e -- ius,
}

Alto = {
  \relative c' {
    \clef alto
    \key d \minor \time 4/4 \autoBeamOff
    r2 a4^\tutti a8 a
    d4 e f e8 d
    e e e a f f g4
    c, r8 f e4. a16 a
    a8. a16 g8 f g e16 e f8 g
  }
}

AltoLyrics = \lyricmode {
  Si -- cut iu --
  ra -- vit Do -- mi -- no,
  vo -- tum vo -- vit De -- o Ia --
  cob. Si de -- de -- ro
  re -- qui -- em tem -- po -- ri -- bus me -- is,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \minor \time 4/4 \autoBeamOff
    R1
    r2 d,4^\tutti d8 d
    a'8. a16 a8 a b4 a8[ g]
    a4 d8 d d d cis4
    d d8. d16 cis?8. cis16 d8 e
  }
}

TenoreLyrics = \lyricmode {
  Si in -- tro --
  i -- e -- ro in ta -- ber --
  na -- cu -- lum do -- mus me --
  ae, si a -- scen -- de -- ro in
}

Basso = {
  \relative c {
    \clef bass
    \key d \minor \time 4/4 \autoBeamOff
    R1*2
    r8 a^\tutti a a16 a d4 e
    f e8 d e a, a'4
    f e8 d e a f e
  }
}

BassoLyrics = \lyricmode {
  Si de -- de -- ro so -- mnum
  o -- cu -- lis me -- is, et
  pal -- pe -- bris dor -- mi -- ta -- "ti -"
}

Organo = {
  \relative c {
    \clef soprano
    \key d \minor \time 4/4
    << {
      d'2 a'4 a
      b a8 g
    } \\ {
      r2 a,
      d4 e
    } >> \clef tenor d,2
    \clef bass a d4 e
    f e8 d e a, a'4
    f e8 d e a f e
  }
}

BassFigures = \figuremode {
  r1
  r
  <4>4 <_+>2 <6!>8 <5>
  r2 <7>8 r <_+>4
  <6>2 <6\\>4. q8
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
