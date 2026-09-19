\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Andante"
    R1*5
    r2 r8 a'' a a
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Andante"
    R1*4
    r2 r4 e'8. d16
    cis8 h16 a h4 a r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    e'4.^\solo d8 cis h16[ a] h4
    a8 h cis4 h8 cis d4
    cis8 dis e2 dis4
    e r8 h h4. e8
    dis d cis4 h2\trill
    a4 r r2
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e -- lei --
  son, e -- lei -- son, e -- lei --
  son, e -- lei -- _
  son, e -- lei -- _
  son, e -- lei -- _
  son.
}

Alto = {
  \relative c' {
    \clef alto
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
    R1*2
    r2 r4 h'8.^\solo a16
    gis8 fis16[ e] fis4 e8 fis gis4
    fis8 gis a2 gis4
    a r r2
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri --
  e e -- lei -- son, e -- lei --
  son, e -- lei -- _
  son.
}

Organo = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Andante"
    a'8 cis fis, gis a fis d e
    a, a' a a gis4 fis8 gis
    a4 gis8 e cis' a h h,
    e gis a h e,4 e16 fis gis a
    h4 cis8 a d d, e e,
    a cis d e a, h cis d
  }
}

BassFigures = \figuremode {
  r4 <7>2 <6 5>4
  r2. <6>8 <5>
  r4 <6>4. <6 5>8 <_+>4
  r4. <_+>8 r2
  <5 _+>8 <6 _!> <6>4 <6 5>2
  r1
}

\score {
  <<
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
