\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Moderato"
    r4 cis'8 cis cis8. cis16 cis4
    cis cis8 h cis4 cis8 a
    e'2. e8 e
    e e4 dis8 e4 r
    r2 r4 gis,~
    gis8 gis gis gis a4 r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key a \major \time 4/4 \tempoMarkup "Moderato"
    r4 cis'8 cis cis8. cis16 cis4
    cis cis8 h cis4 cis8 a
    e'2. e8 e
    e e4 dis8 e4 r
    r2 r4 gis,~
    gis8 gis gis gis a4 r8 e
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    r4 cis'8 cis cis8. cis16 cis4
    cis cis8 h cis cis cis a
    e'2. e8 e
    e e e[ dis] e4 r
    r2 r4 gis,~
    gis8 gis gis gis a4 a8 r
  }
}

SopranoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o: Se -- de,
  se -- de a
  dex -- tris me -- is,
  in --
  i -- mi -- cos tu -- os,
}

Alto = {
  \relative c' {
    \clef alto
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    r4 a'8 a a8. a16 a4
    a a8 gis a a r4
    r gis8 gis a4 a8 h
    e, e a4 gis r
    r2 r4 e~
    e8 e e e e4 e8 r
  }
}

AltoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o:
  Se -- de, se -- de a
  dex -- tris me -- is,
  in --
  i -- mi -- cos tu -- os,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    r4 e8 e e8. e16 e4
    e e8 e e e r4
    r h8 h cis4 cis8 h
    cis h a4 h r
    r2 r4 h~
    h8 h h h cis4 cis8 e
  }
}

TenoreLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o:
  Se -- de, se -- de a
  dex -- tris me -- is,
  in --
  i -- mi -- cos tu -- os, "sca -"
}

Basso = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
    r4 a'8 a a,8. a16 a4
    a'4 a8 e cis a r4
    r gis'8 e a4 a8 gis
    a gis fis4 e e8 e
    e[ h gis h] e,4 e
    e'8 e d d cis4 cis8 r
  }
}

BassoLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus
  Do -- mi -- no me -- o:
  Se -- de, se -- de a
  dex -- tris me -- is, do -- nec
  po -- _ nam
  in -- i -- mi -- cos tu -- os,
}

Organo = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \tempoMarkup "Moderato"
    r4 a' a,2
    a'4 a8 e cis a r4
    r gis'8 e a4. gis8
    a gis fis4 e2
    r r4 e
    e d cis r
  }
}

BassFigures = \figuremode {
  r1
  r2 <6>
  r4 <6>2 r8 q
  r4 <7>8 <6\\> r2
  r1
  r4 <2> <6>2
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
