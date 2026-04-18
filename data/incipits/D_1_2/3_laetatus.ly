\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r8 h''16-! e,-! dis-! c'( h) \hA dis,-! e8 e, r4
    R1
    r2 r8 d'16-! g,-! fis-! e'( d) fis,-!
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    R1*2
    r8 h''16-! e,-! dis-! c'( h) \hA dis,-! e8 e, r4
    R1
    r2 r8 d'16-! g,-! fis-! e'( d) fis,-!
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r4 a'8^\solo a h e, e' d
    c16[ h] c8 r d h4. c16 d
    e8 c16 h a8. a16 g4 r
  }
}

SopranoLyrics = \lyricmode {
  Stan -- tes e -- rant pe -- des
  no -- stri in a -- tri -- is
  tu -- is Ie -- ru -- sa -- lem.
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*2
    r4 r8 fis^\solo e8. e16 e4
    e8 fis16[ g] a[ g] fis[ e] d8[ e16 fis] g4~
    g8 g g fis g4 r
  }
}

AltoLyrics = \lyricmode {
  Ie -- ru -- sa -- lem,
  quae ae -- di -- fi -- ca -- tur __
  ut ci -- vi -- tas.
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8 h^\solo e4~ e8[ d16 e] c8. c16
    h8 h g e e' fis16 cis dis4
    e r r2
    R1*2
  }
}

TenoreLyrics = \lyricmode {
  Lae -- ta -- _ tus
  sum in his quae di -- cta sunt mi --
  hi.

}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r4 r8 e^\solo h'4. a8~
    a g16[ fis] g4 a8 a h8. h16
    e,4 r r r8 gis
    a a fis fis g fis16 g h,8 h
    c c d4 g, r
  }
}

BassoLyrics = \lyricmode {
  In do -- _
  mum Do -- mi -- ni i -- bi --
  mus. Cu --
  ius par -- ti -- ci -- pa -- ti -- o e -- ius
  in id -- ip -- sum.
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "[no tempo]"
    e4-\solo r8 e h'4 e,8 fis
    g4 r8 g a4 h8 h,
    e4 fis g gis
    a fis g h,
    c d g, a8 d
  }
}

BassFigures = \figuremode {
  r2 <4>8 <3> <6 5>4
  <9>8 <8>4 <6>8 <\t>4 <_+>
  r <6\\> <6>2
  r1
  r
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
