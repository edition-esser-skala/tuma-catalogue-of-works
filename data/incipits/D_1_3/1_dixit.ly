\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r8 d''16 fis, e8 cis' d d, r4
    R1
    r4 e8. e16 dis8 h h4
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \major \time 4/4 \tempoMarkup "Allegro"
    R1*2
    r8 fis'16 d cis8 e fis fis, r4
    R1
    r4 e'8. e16 dis8 h h4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*2
    r2 r8 d'^\solo h d
    e c16 h a4 g r
    r e'8.^\tutti e16 dis8 h16 h h8. h16
  }
}

SopranoLyrics = \lyricmode {
  Sca -- bel -- lum
  pe -- dum tu -- o -- rum,
  do -- mi -- na -- re in me -- "di -"
}

Alto = {
  \relative c' {
    \clef alto
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*3
    r8 g'^\solo g fis g e e[ dis]
    e4 r fis8.^\tutti fis16 e8 e16 e
  }
}

AltoLyrics = \lyricmode {
  Vir -- gam vir -- tu -- tis tu --
  ae, do -- mi -- na -- re in
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    r4 d8^\solo g, fis g16 h c8 h16 a
    h8 g h e16 d cis8 d d[ \hA cis]
    d4 r r2
    r r8 fis, fis fis
    g8. fis16 e[ fis] g[ a] h8 h r4
  }
}

TenoreLyrics = \lyricmode {
  Di -- xit Do -- mi -- nus Do -- mi -- no
  me -- o, se -- de a dex -- tris me --
  is,
  e -- mit -- tet
  Do -- mi -- nus ex Si -- on,
}

Basso = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1
    r2 r4 a'8.^\solo a16
    fis8 d a'8. a16 fis8 d g g,
    R1
    r2 h'8.^\tutti h16 gis8 e16 \hA gis
  }
}

BassoLyrics = \lyricmode {
  Do -- nec
  po -- nam in -- i -- mi -- cos tu -- os,

  do -- mi -- na -- re in
}

Organo = {
  \relative c {
    \clef bass
    \key g \major \time 4/4 \tempoMarkup "Allegro"
    g8-\solo a h c d h a d
    g fis e g a d, a' a,
    d fis a a, d fis g g,
    c4 d8 d, g a h4
    e8 d c4 h8 h'-\tutti gis e16 \hA gis
  }
}

BassFigures = \figuremode {
  r2 r8 <6> <7>4
  r <6>8 <5> <_+>4 <4>8 <_+>
  r4 <_+>2.
  r4 <4>8 <3>4 <6\\ 5>8 <4> <_+>
  r <6> <7> <6> <_+>2
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
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
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
